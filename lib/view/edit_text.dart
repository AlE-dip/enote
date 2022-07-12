import 'package:enote/handle/language.dart';
import 'package:flutter/material.dart';

class EditText extends StatefulWidget {
  EditTextState editTextState = EditTextState();

  static EditText createEditText(
      Widget? iconLeft, String hint, Widget? iconRight) {
    EditText editText = EditText();
    editText.editTextState.hint = hint;
    editText.editTextState.iconLeft = iconLeft;
    editText.editTextState.iconRight = iconRight;
    return editText;
  }

  @override
  State<StatefulWidget> createState() {
    return editTextState;
  }
}

class EditTextState extends State<EditText> {
  String? hint;
  TextEditingController textEditingController = TextEditingController();
  Widget? iconLeft;
  Widget? iconRight;
  double padding = 10.0;
  double animatedWidth = 100.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          Container(
              child: iconLeft != null
                  ? Padding(
                padding: EdgeInsets.only(left: padding),
                child: iconLeft,
              )
                  : null),
          Expanded(
            child: TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 15),
                hintText: hint != null
                    ? hint
                    : StringSource.getText(context, "text"),
                border: InputBorder.none,
                contentPadding:
                EdgeInsets.only(left: 10, top: 15, bottom: 15, right: 10),
              ),
            ),
          ),
          Container(
            child: iconRight != null
                ? Padding(
              padding: EdgeInsets.only(right: padding),
              child: iconRight,
            )
                : null,
          )
        ],
      ),
    );
  }
}
