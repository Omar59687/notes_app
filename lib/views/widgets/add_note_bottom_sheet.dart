import 'package:flutter/material.dart';
import 'package:note_app2/constants.dart';
import 'package:note_app2/views/widgets/custom_button.dart';
import 'package:note_app2/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: AddNoteForm(),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        autovalidateMode: autoValidateMode,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              onSaved: (value) {
                title = value;
              },
              hintText: 'Title',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              onSaved: (value) {
                subTitle = value;
              },
              hintText: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 36,
            ),
            CustomButton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autoValidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
