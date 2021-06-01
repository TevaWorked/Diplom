import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_diplom/constants.dart';
import 'package:flutter_diplom/models/BuyProduct.dart';
import 'package:flutter_diplom/models/Product.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key key, this.product}) : super(key: key);
  final BuyProduct product;
  
  @override
  Widget build(BuildContext context) {
   List<String> attachments = [];
  bool isHTML = false;
  final _recipientController = TextEditingController(
    text: '5904517@gmail.com',
  );

  final _subjectController = TextEditingController(text: "Заказ");
    
  var  _bodyController = TextEditingController(
    text: " "
  );
  var name;
  var phone;

  Future<void> send() async {
    final Email email = Email(
      body: _bodyController.text,
      subject: _subjectController.text,
      recipients: [_recipientController.text],
      attachmentPaths: attachments,
      isHTML: isHTML,
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      platformResponse = error.toString();
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(platformResponse),
      ),
    );
  }
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
                  controller: name = TextEditingController(),
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
                  controller: phone = TextEditingController(),
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
                 Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: _bodyController = TextEditingController(text: name.toString() +"\n" + phone.toString() +"\n"+product.message()),
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                      labelText: 'Body', border: OutlineInputBorder()),
                ),
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
                          onPressed: (){},
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
