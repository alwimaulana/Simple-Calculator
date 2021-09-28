import 'package:flutter/material.dart';
import 'package:handson_flutter_new/button_of_number.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

Column keyPadFun(){
  List col = [
    ['1', '2', '3'],
    ['4', '5', '6'],
    ['7', '8', '9'],
    ['.', '0', 'C'],
    ['-', '+', '='],
    ['x', '/']
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('CALCULATOR')
        ),
      ),
      body: Center(
          child:
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 95.0, 0, 0),
            child: keyPadFun(),
          )
          )
      );

  }
}