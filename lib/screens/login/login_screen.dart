import 'package:flutter/material.dart';
import 'package:flutter_diplom/models/BuyProduct.dart';
import 'package:flutter_diplom/screens/login/email_sender.dart';
import 'package:flutter_svg/svg.dart';
import 'body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key, this.product}) : super(key: key);
  final BuyProduct product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmailSender(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      elevation: 0,
      title: Text(
        "Оформление заказа",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
