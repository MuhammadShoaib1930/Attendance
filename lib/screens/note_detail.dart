import 'package:flutter/material.dart';
import 'note.dart';
import 'database_helper.dart';

class NoteDetail extends StatefulWidget {
  final Note? note; // The note to be edited or null for a new note

  NoteDetail({this.note});

  @override
  _NoteDetailState createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _description = '';
  int _priority = 1;
  DatabaseHelper _dbHelper = DatabaseHelper.instance;

  @override
  void initState() {
    super.initState();
    if (widget.note != null) {
      // Initialize fields if editing an existing note
      _title = widget.note!.title;
      _description = widget.note!.description;
      _priority = widget.note!.priority;
    }
  }

  // Method to save the note (either create new or update existing)
  void _saveNote() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save(); // Save form data
      Note note = Note(
        id: widget.note?.id, // Use existing note id if editing
        title: _title,
        description: _description,
        date: DateTime.now().toString(),
        priority: _priority,
      );
      if (widget.note == null) {
        await _dbHelper.insert(note); // Insert new note
      } else {
        await _dbHelper.update(note); // Update existing note
      }
      Navigator.pop(context, true); // Return to the previous screen
    }
  }

  // Building the UI for note detail screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.note == null ? 'New Note' :
