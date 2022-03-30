import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainProdPage extends StatefulWidget {
  const MainProdPage({Key? key}) : super(key: key);

  @override
  State<MainProdPage> createState() => _MainProdPageState();
}

class _MainProdPageState extends State<MainProdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 12),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [Text("Countrt"), Text("City")],
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search, color: Colors.white),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
