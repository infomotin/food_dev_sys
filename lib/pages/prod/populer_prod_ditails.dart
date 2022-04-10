import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_dev_sys/utils/dimension.dart';

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
          Positioned(child: Row(

          ),),
        ],
      ),
    );
  }
}
