/// Flutter code sample for AlertDialog

// This demo shows a [TextButton] which when pressed, calls [showDialog]. When called, this method
// displays a Material dialog above the current contents of the app and returns
// a [Future] that completes when the dialog is dismissed.

import 'package:flutter/material.dart';
import 'dialog.dart';
import 'bodybuilder.dart';
void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  static const String _title = 'Todo List';
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title), 
        centerTitle: true,
        ),
        body: BodyBuilder(),
        floatingActionButton: FloatingButton(),
      ),

    );
  }
}


class FloatingButton extends StatelessWidget {
  const FloatingButton({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: ()=>showDialog(
        context: context, builder: (BuildContext context) => DialogBuilder()) 
      ,
      child: Icon(Icons.add),
    );
  }
}

