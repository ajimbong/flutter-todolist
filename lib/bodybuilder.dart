
import 'package:flutter/material.dart';

 List text = [];



class BodyBuilder extends StatefulWidget {
  
  const BodyBuilder({
    Key key,
  }) : super(key: key);
  @override
  _BodyBuilderState createState() => _BodyBuilderState();
}

class _BodyBuilderState extends State<BodyBuilder> {
 
  
  _BodyBuilderState();

  @override
  Widget build(BuildContext context) {
    return ListView(  
     children: text.map((e){
        delete(){
          setState(() {
                      text.remove(e);
                    });
        }
        return CardTemp( e, delete);
      }).toList(),
    );
  }
}
/* 
children: text.map((e){
        delete(){
          setState(() {
                      text.remove(e);
                    });
        }
        return CardTemp(e, delete);
      }).toList(),
*/

class CardTemp extends StatelessWidget {
  final text;
  final Function delete;
  CardTemp(this.text, this.delete);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
          
               Expanded( flex: 5,child: Text('$text')),
                VerticalDivider( color: Colors.black,),
                
                  Expanded(child: TextButton(onPressed: delete,child: Icon(Icons.delete, color: Colors.red,),))
            ],),),
      ),
    );
  }
}