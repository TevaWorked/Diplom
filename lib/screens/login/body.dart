import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_diplom/constants.dart';
import 'package:flutter_diplom/models/Product.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController gemail, phone, name;
    List<String> list = [];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(width: 2, color: Colors.blue),
                    ),
                    labelText: "ФИО",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(width: 2, color: Colors.blue),
                    ),
                    labelText: "Телефон",
                    prefixIcon: Icon(Icons.phone),
                    prefixText: " +7 ",
                  ),
                  maxLength: 10,
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: gemail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(width: 2, color: Colors.blue),
                    ),
                    labelText: "Почта",
                    prefixIcon: Icon(Icons.email),
                    suffixText: "@gmail.com",
                  ),
                  inputFormatters: [FilteringTextInputFormatter.deny("@")],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            "Заказать",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
