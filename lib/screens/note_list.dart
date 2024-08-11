import 'package:flutter/material.dart';
import 'note.dart';
import 'database_helper.dart';
import 'note_detail.dart';

class NoteList extends StatefulWidget {
  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  List<Note> _noteList = []; // List to store notes retrieved from the database
  DatabaseHelper _dbHelper = DatabaseHelper.instance;

  @override
  void initState() {
    super.initState();
    _refreshNoteList(); // Fetch and display notes on startup
  }

  // Method to refresh the note list by fetching data from the database
  void _refreshNoteList() async {
    List<Note> notes = await _dbHelper.queryAllNotes();
    setState(() {
      _noteList = notes;
    });
  }

  // Method to navigate to the NoteDetail screen for editing or adding a note
  void _navigateToDetail(Note? note) async {
    bool? result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NoteDetail(note: note)),
    );
    if (result == true) {
      _refreshNoteList(); // Refresh list if a note was added/updated
    }
  }

  // Building the UI for the note list screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NoteKeeper'), // Title of the app
      ),
      body: ListView.builder(
        itemCount: _noteList.length, // Number of notes to display
        itemBuilder: (context, index) {
          Note note = _noteList[index]; // Get note at the current index
          return Card(
            child: ListTile(
              title: Text(note.title),
              subtitle: Text(note.date),
              onTap: () => _navigateToDetail(note), // Edit the selected note
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () async {
                  await _dbHelper.delete(note.id!); // Delete the note
                  _refreshNoteList(); // Refresh the list
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _navigateToDetail(null), // Create a new note
        child: Icon(Icons.add), // Icon for adding a new note
      ),
    );
  }
}
