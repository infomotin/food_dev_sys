import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_dev_sys/home/prod_page_body.dart';
import 'package:food_dev_sys/widgets/big_text.dart';
import 'package:food_dev_sys/widgets/smal_text.dart';

class MainProdPage extends StatefulWidget {
  const MainProdPage({Key? key}) : super(key: key);

  @override
  State<MainProdPage> createState() => _MainProdPageState();
}

class _MainProdPageState extends State<MainProdPage> {
  @override
  Widget build(BuildContext context) {
    print("Devices Height :" + MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          // showing header
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 12),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Bangladesh", size: 30, color: Colors.blue),
                      Row(
                        children: [
                          SmallText(
                            text: "Jhenaidah",
                            color: Color(0xFFcccab0),
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search, color: Colors.white),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 7.0,
                          offset: Offset(5, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
          ),
          // shoing prod body
          ProdPageBody()
        ],
      ),
    );
  }
}
