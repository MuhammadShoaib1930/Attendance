// Importing the necessary Dart packages
// Note class model that defines the structure of a note
class Note {
  int? id; // Unique identifier for each note (Primary Key)
  String title; // Title of the note
  String description; // Description/content of the note
  String date; // Date when the note was created or modified
  int priority; // Priority of the note, can be used for sorting

  // Constructor with named parameters for initializing a Note object
  Note({
    this.id, // id is optional and can be null
    required this.title, // title is required
    required this.description, // description is required
    required this.date, // date is required
    required this.priority, // priority is required
  });

  // A method to convert a Note object into a map to store in the database
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'title': title,
      'description': description,
      'date': date,
      'priority': priority,
    };
    if (id != null) {
      map['id'] = id; // Include id in the map only if it is not null
    }
    return map; // Return the map containing note data
  }

  // A factory constructor to create a Note object from a map (usually from database)
  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      id: map['id'], // Assign id from the map
      title: map['title'], // Assign title from the map
      description: map['description'], // Assign description from the map
      date: map['date'], // Assign date from the map
      priority: map['priority'], // Assign priority from the map
    );
  }
}
