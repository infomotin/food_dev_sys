import 'package:flutter/cupertino.dart';

class SmalText extends StatelessWidget {
  //input paramitter
  Color? color;
  final String text;
  double size;

  SmalText(
      {Key? key,
      this.color = const Color(0xFF89dab0),
      required this.text,
      this.size = 12,

      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: size,
        color: color,

      ),
    );
  }
}
