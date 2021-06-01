import 'package:flutter/material.dart';
import 'package:flutter_diplom/models/BuyProduct.dart';
import 'package:flutter_diplom/models/Product.dart';
import 'package:flutter_diplom/screens/cart/cart_screen.dart';
import 'package:flutter_diplom/screens/home/select_categorie.dart';
import 'package:flutter_diplom/screens/tabBar/body_tab.dart';
import 'package:flutter_svg/svg.dart';

import '../../compClass.dart';
import '../../constants.dart';

class TabBar2 extends StatefulWidget {
  TabBar2({Key key, this.product}) : super(key: key);
  final BuyProduct product;

  @override
  _TabBarState createState() => _TabBarState();
}

class _TabBarState extends State<TabBar2> {
  List<List<Product>> products = [allProduct(), gardenProduct(), homeProduct(), remontProduct()];
  Widget build(BuildContext context) {
    return DefaultTabController(
       length: 5,
       child: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        "Товары",
        style: TextStyle(
            color: kTextColor, fontWeight: FontWeight.bold, fontSize: 30),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Cart(
                          product: retProduct(widget.product),
                        )));
          },
        ),
        SizedBox(
          width: kDefaultPadding,
        )
      ],
           bottom: TabBar(
             labelPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
             labelColor:  kTextColor,
             isScrollable: true,
             tabs: [
               Tab(text: "Все",),
               Tab(text: "Для дома",),
               Tab(text: "Для сада",),
               Tab(text: "Ремонт",),
               Tab(text: "Сантехника",)
             ],
           ),
         ),
         body: TabBarView(children: [
           BodyTab(products: products[0], buyProduct: widget.product,),
           BodyTab(products: products[2], buyProduct: widget.product,),
           BodyTab(products: products[1], buyProduct: widget.product,),
           BodyTab(products: products[3], buyProduct: widget.product,),
           BodyTab(products: products[3], buyProduct: widget.product,),
         ],),
       ),
    );
  }
}