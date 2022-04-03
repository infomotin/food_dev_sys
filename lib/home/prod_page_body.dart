import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_dev_sys/widgets/big_text.dart';
import 'package:food_dev_sys/widgets/smal_text.dart';

class ProdPageBody extends StatefulWidget {
  const ProdPageBody({Key? key}) : super(key: key);

  @override
  State<ProdPageBody> createState() => _ProdPageBodyState();
}

class _ProdPageBodyState extends State<ProdPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      // for debug adding
      color: Colors.redAccent,
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            //create a function that return a container with index positions
            return _buildPageProdItem(position);
          }),
    );
  }

  //declear fun body
  Widget _buildPageProdItem(int index) {
    return Stack(
      children: [
        Container(
          //create a first slider
          height: 220,
          margin: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
              color: index.isEven ? Color(0xFFcccab0) : Color(0xFF92cab0),
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("image/prod2.png"))),
        ),
        //overlap container
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            //create a first slider
            height: 140,
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Chines Side"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                            5,
                            (index) => Icon(
                                  Icons.star,
                                  color: Colors.red,
                                  size: 15,
                                )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(
                        text: "4.5",
                        color: Colors.black54,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
