import 'package:flutter/material.dart';
import 'package:handson_flutter_new/button_of_number.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

Column keyPadFun(){
  List col = [
    ['1', '2', '3', '+'],
    ['4', '5', '6', '-'],
    ['7', '8', '9', 'x'],
    ['C', '0', '=', '/'],
  ];
  return Column(
    children:
    List.generate(col.length, (index) =>
    _numberRow(col[index])),
  );
}
// Column rowLooping(List<List<String>> data) {
//   return Column(
//     children: List.generate(data.length, (index) => Column(
//       children: [keyPadFun(data[index])],
//     ))
//   );
// }
Widget _numberRow(List<String> numbers) {
  return Row(children: List.generate(numbers.length, (index) =>
  _buttonOfNumberBuilder(numbers[index])),
  );
}

Widget _buttonOfNumberBuilder(String num) {
  return ButtonOfNumber(number: num,);
}

class _HomePageState extends State<HomePage> {

  int first = 0, second = 0 ;
  String opp ='';
  String result = '', text = '';

  void btnClick(String btnText) {
    if (btnText == "C") {
      result ="";
      text = "";
      first = 0;
      second = 0;
    } else if (btnText == "+" || btnText == "-" || btnText == "x" || btnText == "/") {
      first = int.parse(text);
      result = "";
      opp = btnText;
    } else if (btnText == "=") {
      second = int.parse(text);
      if (opp == "+") {
        result = (first + second).toString();
      } else if (opp == "-") {
        result = (first - second).toString();
      } else if (opp == "x") {
        result = (first * second).toString();
      } else if (opp == "/") {
        result = (first ~/ second).toString();
      }
    } else {
      result = int.parse(text + btnText).toString();
    }
    setState(() {
      text = result;
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
      body: Center(
          child: Column(
            children: [
              Expanded(child:
                Text(text, style: TextStyle(fontSize: 50, color: Colors.indigo),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 200.0, 0, 0),
                child: keyPadFun(),
              )
            ],
          )

          )
      );

  }
}