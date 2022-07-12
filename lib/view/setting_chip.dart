import 'dart:ffi';
import 'package:enote/handle/language.dart';
import 'package:enote/view/chip_group.dart';
import 'package:enote/view/custom_view.dart';
import 'package:enote/view/edit_text.dart';
import 'package:flutter/material.dart';

class SettingChip extends StatefulWidget {
  ImageIcon imageIcon;
  String textName;

  SettingChip(this.imageIcon, this.textName);

  @override
  State<StatefulWidget> createState() {
    return _SettingChip(imageIcon, textName);
  }
}

class _SettingChip extends State<SettingChip> {
  double _padding = 15.0;
  bool isOpen = false;

  ImageIcon imageIcon;
  String textName;

  late EditText editText;
  EditText createEditText(String hint){
    editText = EditText();
    editText.editTextState.hint = hint;
    editText.editTextState.iconLeft = ImageIcon(
      AssetImage("assets/images/settings.png"),
      size: 24,
    );//Icon(Icons.settings_sharp, size: 30,);
    return editText;
  }

  _SettingChip(this.imageIcon, this.textName);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOpen = !isOpen;
        });
      },
      child: Card(
          shadowColor: Colors.black26,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(_padding),
                    child: imageIcon,
                  ),
                  !isOpen
                      ? Expanded(
                          child: Text(textName),
                        )
                      : Expanded(child: createEditText(textName),),
                  !isOpen
                      ? Padding(
                          padding: EdgeInsets.all(_padding),
                          child: ImageIcon(AssetImage("assets/images/down.png"),
                              size: 10),
                        )
                      : IconButton(
                          icon: ImageIcon(AssetImage("assets/images/add.png"),
                              size: 20),
                          onPressed: () {},
                        ),
                ],
              ),
              Row(
                children: [
                  Visibility(
                    child: ChipGroup(false),
                    visible: isOpen,
                  )
                ],
              )
            ],
          )),
    );
  }
}