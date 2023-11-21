import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
            backgroundColor: Colors.red,
            title:Text('Dicee',
            style:TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            )
          ),
      ),
        body: Dicee(),
    ),
    ),
  );
}
class Dicee extends StatefulWidget {

  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  var leftNum=1;
  var rightNum=1;
//comment
  void returnCube(){
    setState(() {
      leftNum=Random().nextInt(6)+1;
      rightNum=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(child:Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: (){

                returnCube();


            },
            child: Image.asset('images/dicee$leftNum.png'),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: (){
                returnCube();

            },
            child: Image.asset('images/dicee$rightNum.png'),

          ),
        )

      ],
    ),
    );
  }
}


