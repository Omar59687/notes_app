import 'package:flutter/material.dart';
import 'package:note_app2/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
      body: NotesViewBody(),
    );
  }
}
