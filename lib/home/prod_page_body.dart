import 'package:flutter/cupertino.dart';

class ProdPageBody extends StatefulWidget {
  const ProdPageBody({Key? key}) : super(key: key);

  @override
  State<ProdPageBody> createState() => _ProdPageBodyState();
}

class _ProdPageBodyState extends State<ProdPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            //create a function that return a container with index positions
            return _buildPageProdItem(position);
          }),
    );
  }

  //declear fun body
  Widget _buildPageProdItem(int index) {
    return Container(
      //create a first slider
      height: 220,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          color: Color(0xFFcccab0), borderRadius: BorderRadius.circular(30)),
    );
  }
}
