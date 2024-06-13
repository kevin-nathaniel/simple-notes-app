import 'package:flutter/material.dart';
import 'package:notesapp/model/note.dart';

class NotesProvider with ChangeNotifier {
  List<Note> _notes = [
    Note(
      id: '1',
      title: 'First Note',
      content: 'This is the content of the first note',
    ),
    Note(
      id: '2',
      title: 'Second Note',
      content: 'This is the content of the second note',
    ),
  ];

  List<Note> get notes => _notes;

  void addNote(Note note) {
    _notes.add(note);
    notifyListeners();
  }

  void deleteNote(String id) {
    _notes.removeWhere((note) => note.id == id);
    notifyListeners();
  }
}
