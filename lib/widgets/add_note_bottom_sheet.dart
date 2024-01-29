import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddBottomModelSheet extends StatelessWidget {
  const AddBottomModelSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding:  EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
            CustomTextField(
                hint:'Content',
                maxLengthLine: 5,
            ),
        ],
      ),
    );
  }
}
