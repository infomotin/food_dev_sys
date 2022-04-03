import 'package:flutter/cupertino.dart';
import 'package:food_dev_sys/widgets/smal_text.dart';

class TextAndIconWidget extends StatefulWidget {
  //some paramitter
  final IconData icon;
  final String text;
  final Color iconColor;
  const TextAndIconWidget(
      {Key? key,
      required this.icon,
      required this.text,
      required this.iconColor})
      : super(key: key);

  @override
  State<TextAndIconWidget> createState() => _TextAndIconWidgetState();
}

class _TextAndIconWidgetState extends State<TextAndIconWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(
          width: 5,
        ),
        SmallText(
          text: text,
        )
      ],
    );
  }
}
