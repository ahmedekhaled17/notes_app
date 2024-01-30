import 'package:flutter/material.dart';
import 'package:notes_app/Views/edit_note_view.dart';


class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)
        {
          return EditNoteView();
        }));

      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0XFFFFCCB0),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 24),
                child: Text(
                  'Build Your career with tharwat samy',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 18),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text('Mat 23,  2023',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }
}
