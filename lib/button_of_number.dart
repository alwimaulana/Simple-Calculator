import 'package:flutter/material.dart';

// class ButtonOfNumber extends StatefulWidget {
//   final String number ;
//   const ButtonOfNumber({Key? key, required this.number}) : super(key: key);
//
//   @override
//   _ButtonOfNumberState createState() => _ButtonOfNumberState();
// }
//
// class _ButtonOfNumberState extends State<ButtonOfNumber> {
//   //
//   // int first = 0, second = 0 ;
//   // String opp ='';
//   // String result = '', text = '';
//   //
//   // void btnClick(String btnText) {
//   //   if (btnText == "C") {
//   //     result ="";
//   //     text = "";
//   //     first = 0;
//   //     second = 0;
//   //   } else if (btnText == "+" || btnText == "-" || btnText == "x" || btnText == "/") {
//   //     first = int.parse(text);
//   //     result = "";
//   //     opp = btnText;
//   //   } else if (btnText == "=") {
//   //     second = int.parse(text);
//   //     if (opp == "+") {
//   //       result = (first + second).toString();
//   //     } else if (opp == "-") {
//   //       result = (first - second).toString();
//   //     } else if (opp == "x") {
//   //       result = (first * second).toString();
//   //     } else if (opp == "/") {
//   //       result = (first ~/ second).toString();
//   //     }
//   //   } else {
//   //     result = int.parse(text + btnText).toString();
//   //   }
//   //   setState(() {
//   //     text = result;
//   //   });
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(0),
//       child:
//       MaterialButton(
//         onPressed: () => btnClick,
//         child: Text(number ,
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.white)
//         ),
//         color: Colors.indigoAccent[100],
//         height: 60.0,
//         minWidth: 90.0,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0),
//           //  side: BorderSide(color: Colors.indigo)
//         ),
//       ),
//     );
//   }
// }
//





//---------------------------------------------------------------------------
//
class ButtonOfNumber extends StatelessWidget {
 // const ButtonOfNumber({Key? key}) : super(key: key);
  final String number;
  //final double? elevationSize;
  const ButtonOfNumber({required this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: MaterialButton(
        onPressed: () {},
        child: Text(number,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.white)
        ),
        color: Colors.indigoAccent[100],
        height: 60.0,
        minWidth: 90.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0),
          //  side: BorderSide(color: Colors.indigo)
        ),
      ),
    );
  }
}