import 'package:flutter/material.dart';
import 'package:note_app2/views/widgets/edit_note_view.dart';
import 'package:note_app2/views/widgets/edit_view_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const EditViewBody();
          }),
        );
      },
      child: Container(
          padding: const EdgeInsets.only(
            top: 24,
            bottom: 24,
            left: 16,
          ),
          decoration: BoxDecoration(
            color: Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text("Flutter Tips",
                    style: TextStyle(color: Colors.black, fontSize: 26)),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text("Build your career with tharwat samy",
                      style: TextStyle(color: Colors.black54, fontSize: 18)),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text('May 21, 2022',
                    style: TextStyle(color: Colors.black54, fontSize: 16)),
              ),
            ],
          )),
    );
  }
}
