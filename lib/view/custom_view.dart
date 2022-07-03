import 'package:flutter/material.dart';

class CustomView{
  static Widget edditText(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        borderRadius:  BorderRadius.circular(32),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 17),
          hintText: 'Search your trips',
          suffixIcon: Icon(Icons.search),
          border: InputBorder.none,
        ),
      ),
    );
  }
}