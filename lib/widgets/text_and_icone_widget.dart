import 'package:flutter/cupertino.dart';
import 'package:food_dev_sys/widgets/smal_text.dart';

class TextAndIconWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color textColor;
  final Color iconColor;

  const TextAndIconWidget(
      {Key? key,
      required this.icon,
      required this.text,
      required this.textColor,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(
          height: 5,
        ),
        SmallText(
          text: text,
          color: textColor,
        )
      ],
    );
  }
}
