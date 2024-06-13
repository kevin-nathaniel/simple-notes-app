import 'package:flutter/material.dart';
import 'package:notesapp/note/note_view.dart';
import 'package:notesapp/provider/note_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotesProvider(),
      child: MaterialApp(
        title: 'Flutter Notes App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: NotesListScreen(),
      ),
    );
  }
}
