import 'package:flutter/material.dart';
import 'bodybuilder.dart';

class DialogBuilder extends StatefulWidget {
  const DialogBuilder({
    Key key,
  }) : super(key: key);

  @override
  _DialogBuilderState createState() => _DialogBuilderState();
}

class _DialogBuilderState extends State<DialogBuilder> {
 final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add a new todo'),
      content: TextField(  
        controller: controller,
      ),
      actions: [
        TextButton(onPressed: (){
          if(controller != ''){
            setState(() {
            text.add(controller.text);
                        });
            print(text);
          }
          Navigator.of(context).pop(true);
        },
        

        child: Text('Add'),
         ),

         TextButton(
           onPressed: ()=> Navigator.of(context).pop(true),
           child: Text('Exit'),)
      ],
    );
  }
} 
