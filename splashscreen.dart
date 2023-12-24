

import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';

class splashscreen extends StatefulWidget {  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),()
    {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => NoteList(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.note_add,size: 100,color: Colors.blue,)
        ],
      ),
    );
  }}
