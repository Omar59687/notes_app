import 'package:flutter/material.dart';
import 'package:note_app2/views/widgets/custom_app_bar.dart';
import 'package:note_app2/views/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check,
            ),
            const SizedBox(height: 50),
            CustomTextField(hintText: 'Title'),
            const SizedBox(height: 16),
            CustomTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
