import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_dev_sys/utils/dimension.dart';
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

  //get parrent height
  double _height = Dimensions.pageViewContainer;

  // initPage if in enter this page then do some thing
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
        print("Current Page Value is:" + _currentPageValue.toString());
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
    return Column(
      children: [
        // slider
        Container(
          // for debug adding
          // color: Colors.redAccent,
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                //create a function that return a container with index positions
                return _buildPageProdItem(position);
              }),
        ),
        // dots
        new DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue,
          decorator: DotsDecorator(
            activeColor: Colors.indigo,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide.none,
            ),
          ),
        ),
        //Popular Text Section

      ],
    );
  }

  //declear fun body
  Widget _buildPageProdItem(int index) {
    // create a instance matrix4 ?
    Matrix4 matrix = new Matrix4.identity();
    // if match current page value and index are same than got staple
    if (index == _currentPageValue.floor()) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFacto);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
      print(matrix.toString());
    } else if (index == _currentPageValue.floor() + 1) {
      var currScale =
          _scaleFacto + (_currentPageValue - index + 1) * (1 - _scaleFacto);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFacto);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFacto) / 2, 0);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            //create a first slider
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimensions.height15, right: Dimensions.height15),
            decoration: BoxDecoration(
                color: index.isEven ? Color(0xFFcccab0) : Color(0xFF92cab0),
                borderRadius: BorderRadius.circular(Dimensions.height30),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("image/prod2.png"))),
          ),
          //overlap container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              //create a first slider
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.height30,
                  right: Dimensions.height30,
                  bottom: Dimensions.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.font20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 6.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height15,
                    left: Dimensions.height15,
                    right: Dimensions.height15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Chinese Side"),
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
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
