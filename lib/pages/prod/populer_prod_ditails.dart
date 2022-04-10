import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_dev_sys/utils/dimension.dart';
import 'package:food_dev_sys/widgets/app_colum.dart';
import 'package:food_dev_sys/widgets/app_icon.dart';
import 'package:food_dev_sys/widgets/big_text.dart';
import 'package:food_dev_sys/widgets/smal_text.dart';
import 'package:food_dev_sys/widgets/text_and_icone_widget.dart';

class PopulerProdDetails extends StatelessWidget {
  const PopulerProdDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.populerProdImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "image/prod4.png",
                  ),
                ),
              ),
            ),
          ),
          //icon
          Positioned(
            top: Dimensions.height30,
            left: Dimensions.height20,
            right: Dimensions.height20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                ),
              ],
            ),
          ),
          //prod description
          Positioned(
            left: 0,
            right: 0,
            // bottom: 0,
            top: Dimensions.populerProdImgSize - Dimensions.height20,
            child: Container(
              padding: EdgeInsets.only(
                top: Dimensions.height18,
                left: Dimensions.height18,
                right: Dimensions.height18,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Another Diyanamic Text"),
                  SizedBox(
                    height: Dimensions.height14,
                  ),
                  BigText(text: "Introduce"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
