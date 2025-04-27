import 'package:flutter/material.dart';
import 'package:note_app2/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});

  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
        maxLines: maxLines,
        cursorColor: KPrimaryColor,
        decoration: InputDecoration(
          hintText: hintText,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(KPrimaryColor),
        ));
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.lightBlueAccent,
      ),
    );
  }
}
