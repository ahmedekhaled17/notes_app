import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton:FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: (){
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(16)
              ),
              context: context, builder: (context)
          {
            return const AddBottomModelSheet();
          });
        },
      child:const Icon(Icons.add,
      color: Colors.black,
       ),
      ),
      body:const NotesViewBody()
    );
  }
}


