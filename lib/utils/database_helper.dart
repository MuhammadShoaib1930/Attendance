// Importing necessary packages for database operations
import 'dart:async';
import 'package:flutter_demos_master/models/note.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  // Singleton pattern to ensure only one instance of DatabaseHelper exists
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  DatabaseHelper._privateConstructor();

  static Database? _database;

  // Getter for the database; initializes if not already done
  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  // Method to initialize the database
  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'notes.db'); // Path to the database file
    return await openDatabase(
      path,
      version: 1, // Database version
      onCreate: _onCreate, // Callback for creating the database schema
    );
  }

  // Callback function to create the database schema
  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE notes (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT NOT NULL,
            description TEXT,
            date TEXT NOT NULL,
            priority INTEGER NOT NULL
          )
          ''');
  }

  // Method to insert a new note into the database
  Future<int> insert(Note note) async {
    Database? db = await instance.database; // Get the database instance
    return await db!.insert('notes', note.toMap()); // Insert note and return the row id
  }

  // Method to retrieve all notes from the database
  Future<List<Note>> queryAllNotes() async {
    Database? db = await instance.database;
    final List<Map<String, dynamic>> maps = await db!.query('notes');
    return List.generate(maps.length, (i) {
      return Note.fromMap(maps[i]); // Convert each map to a Note object
    });
  }

  // Method to update an existing note in the database
  Future<int> update(Note note) async {
    Database? db = await instance.database;
    return await db!.update(
      'notes',
      note.toMap(),
      where: 'id = ?',
      whereArgs: [note.id],
    );
  }

  // Method to delete a note from the database
  Future<int> delete(int id) async {
    Database? db = await instance.database;
    return await db!.delete(
      'notes',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
