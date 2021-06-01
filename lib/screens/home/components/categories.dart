import 'package:flutter/material.dart';
import 'package:flutter_diplom/models/BuyProduct.dart';
import 'package:flutter_diplom/models/Product.dart';
import 'package:flutter_diplom/screens/home/components/item_card.dart';
import 'package:flutter_diplom/screens/home/select_categorie.dart';

import '../../../constants.dart';

class Categories extends StatefulWidget {
  Categories({Key key, this.product, this.categorie}) : super(key: key);
   BuyProduct product;
   String categorie;
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  List<String> categories = ["Все","Для сада", "Для дома", "Ремонт", "Сантехника"];
  String catigorie;
  int selecteIndex = 0;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selecteIndex = index;
          widget.categorie = categories[selecteIndex];
          // Navgator.pushNamed(context, )
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selecteIndex == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPadding / 4),
              height: 2,
              width: 30,
              color: selecteIndex == index ? Colors.black : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
