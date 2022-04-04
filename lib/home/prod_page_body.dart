import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_dev_sys/widgets/big_text.dart';
import 'package:food_dev_sys/widgets/smal_text.dart';
import 'package:food_dev_sys/widgets/text_and_icone_widget.dart';

class ProdPageBody extends StatefulWidget {
  const ProdPageBody({Key? key}) : super(key: key);

  @override
  State<ProdPageBody> createState() => _ProdPageBodyState();
}

class _ProdPageBodyState extends State<ProdPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  //contain page value with variable
  var _currentPageValue = 0.0;
  //80% bigger than crrunt size
  double _scaleFacto = 0.8;

  // initPage if in enter this page then do some thing
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
        // print("Current Page Value is:" + _currentPageValue.toString());
      });
    });
  }

// dispose Page then do something
  @override
  void dispose() {
    // working with memory mgnege sys clean memory
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // for debug adding
      // color: Colors.redAccent,
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
    // create a instance matrix4 ?
    Matrix4 matrix4 = new Matrix4.identity();
    // if match current page value and index are same than got staple
    if (index == _currentPageValue.floor()) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFacto);
      print("currScale" + currScale.toString());
    }
    return Stack(
      children: [
        Container(
          //create a first slider
          height: 220,
          margin: EdgeInsets.only(left: 15, right: 15),
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
            height: 120,
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Chinese Side"),
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
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "1254"),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(
                        text: "Comments.",
                        color: Colors.black45,
                      ),
                    ],
                  ),
                  //create space
                  SizedBox(
                    height: 20,
                  ),
                  Row(
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
