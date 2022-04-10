import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_dev_sys/utils/dimension.dart';
import 'package:food_dev_sys/widgets/smal_text.dart';
import 'package:food_dev_sys/widgets/text_and_icone_widget.dart';

import 'big_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: Colors.red,
                        size: Dimensions.height15,
                      )),
            ),
            SizedBox(
              width: Dimensions.height10,
            ),
            SmallText(
              text: "4.5",
              color: Colors.black54,
            ),
            SizedBox(
              width: Dimensions.height10,
            ),
            SmallText(text: "1254"),
            SizedBox(
              width: Dimensions.height10,
            ),
            SmallText(
              text: "Comments.",
              color: Colors.black45,
            ),
          ],
        ),
        //create space
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextAndIconWidget(
                icon: Icons.circle_sharp,
                text: "Normal",
                textColor: Colors.black45,
                iconColor: Colors.brown),
            TextAndIconWidget(
                icon: Icons.location_on,
                text: "1.7 Km",
                textColor: Colors.pink,
                iconColor: Colors.lightBlue),
            TextAndIconWidget(
                icon: Icons.access_time,
                text: "35 Minutes",
                textColor: Colors.red,
                iconColor: Colors.black45),
          ],
        ),
      ],
    );
  }
}
