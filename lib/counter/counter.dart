import 'package:flutter/material.dart';
import 'package:handson_flutter_new/counter/button_decrement.dart';
import 'package:handson_flutter_new/counter/button_increment.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int val = 0;

  _increment(){
    setState(() {
      val++;
    } );
  }
  _decrement(){
    setState(() {
      val--;
    });
  }
  _reset(){
    setState(() {
      val = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text('CALCULATOR')
          ),
        ),
      body: Column(
        children: [
          Text(val.toString(), style: TextStyle(fontSize: 50),),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonIncrement(increment: _increment,),
              ButtonDecrement(decrement: _decrement,)
            ],
          )
        ],
      )
    );
  }
}
