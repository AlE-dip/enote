import 'package:enote/handle/language.dart';
import 'package:flutter/material.dart';

class EditText extends StatefulWidget {
  EditTextState editTextState = EditTextState();

  @override
  State<StatefulWidget> createState() {
    return editTextState;
  }
}

class EditTextState extends State<EditText> {
  String? hint;
  TextEditingController textEditingController = TextEditingController();
  Widget? icon;
  bool iconLeft = true;
  double padding = 10.0;
  double animatedWidth = 100.0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            Container(
                child: iconLeft
                    ? Padding(
                        padding: EdgeInsets.only(left: padding),
                        child: icon,
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
                child: iconLeft
                    ? null
                    : Padding(
                        padding: EdgeInsets.only(right: padding),
                        child: icon,
                      )),
          ],
        ),
      ),
    );
  }
}
