import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint, this.maxLengthLine =1, this.onSaved})
      : super(key: key);


 final String hint;
 final int maxLengthLine;
 final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value)
      {
        if(value?.isEmpty ?? true){
          return "Field is required";
        }else {
          return null;
        }
      },
      maxLines: maxLengthLine,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle:const TextStyle(
              color: kPrimaryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder (kPrimaryColor),
        )
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16
        ),
        borderSide: BorderSide(color: color ??Colors.white)

    );
  }
}
