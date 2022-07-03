import 'package:flutter/material.dart';

class ChipGroup extends StatefulWidget {
  bool single;

  ChipGroup(this.single);

  @override
  State<StatefulWidget> createState() {
    return _ChipGroup(single);
  }
}

class _ChipGroup extends State<ChipGroup> {
  bool single;

  _ChipGroup(this.single);

  List<String> choicesList = [
    "dsd",
    "dsds",
    "dsdjshdjsh",
    "dsdsk",
    "dsdh",
    "dsd",
    "dsds",
    "dsdjshdjsh",
    "dsdsk",
    "dsdh",
    "dsd",
    "dsds",
    "dsdjshdjsh",
    "dsdsk",
    "dsdh"
  ];
  late List<bool> choiceIndex;
  int choseSingle = -1;

  @override
  void initState() {
    if (!single){
      choiceIndex = List.filled(choicesList.length, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Wrap(
            spacing: 8,
            runSpacing: 3,
            children: List.generate(choicesList.length, (index) {
              return FilterChip(
                labelPadding: EdgeInsets.all(2.0),
                label: Text(
                  choicesList[index],
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.black87, fontSize: 14),
                ),
                selected:
                    single ? choseSingle == index : choiceIndex[index],
                selectedColor: Colors.black26,
                onSelected: (isChecked) {
                  setState(() {
                    single
                        ? isChecked ? choseSingle = index : choseSingle = -1
                        : choiceIndex[index] = choiceIndex[index] ? false : true;
                  });
                },
                elevation: 6.0,
                padding: EdgeInsets.all(8),
              );
            })));
  }

  //if single return index
  //else return list index
  dynamic getCheckedIndex(){
    return single ? choseSingle : choiceIndex;
  }

  void unCheckAll(){
    setState(() => {
      single ? choseSingle = -1 : choiceIndex = List.filled(choicesList.length, false)
    });
  }
}
