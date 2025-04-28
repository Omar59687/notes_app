import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app2/constants.dart';
import 'package:note_app2/models/note_model.dart';
import 'package:note_app2/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(KNotesBox);
  Hive.registerAdapter(NoteModelAdapter());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor:
            Colors.grey[850], // or any other color you prefer
      ),
      home: NotesView(),
    );
  }
}
