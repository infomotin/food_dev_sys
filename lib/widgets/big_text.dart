import 'package:flutter/cupertino.dart';
import 'package:food_dev_sys/utils/dimension.dart';

class BigText extends StatelessWidget {
  //input paramitter
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText(
      {Key? key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.size = 20,
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: Dimensions.font20,
        color: color,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
