import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_diplom/models/BuyProduct.dart';
import 'package:flutter_diplom/models/Product.dart';
import 'package:flutter_diplom/screens/cart/cart_screen.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class AddToCart extends StatelessWidget {
  final BuyProduct buyProduct;
  final Product product;
  final int amount;
  const AddToCart({
    Key key,
    this.product,
    this.buyProduct,
    this.amount,
  }) : super(key: key);
  void bProduct(Product p) {
    List<BuyProduct> products = [];
    products.add(p);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding,
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: Colors.blue,
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset("assets/icons/add_to_cart.svg"),
              onPressed: () {
                showAlertDialog(context);
                if (buyProduct.prov(product) == true) {
                  buyProduct.fillList(product);
                } else {
                  product.amount++;
                }
              },
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Cart(
                                product: buyProduct,
                              )));
                  if (buyProduct.prov(product) == true) {
                    buyProduct.fillList(product);
                  } else {
                    product.amount++;
                  }
                  print(buyProduct.amount);
                },
                child: Text(
                  "Купить сейчас".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Корзина"),
    content: Text("Товар добавлен в корзину"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
