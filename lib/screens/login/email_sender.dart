import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_diplom/models/BuyProduct.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class EmailSender extends StatefulWidget {
  const EmailSender({Key key, this.product}) : super(key: key);
  final BuyProduct product;

  @override
  _EmailSenderState createState() => _EmailSenderState(product);
}

class _EmailSenderState extends State<EmailSender> {
  BuyProduct product;
  _EmailSenderState(this.product);
  List<String> attachments = [];
  bool isHTML = false;
  final phone = TextEditingController(
    text: '',
  );

  final name = TextEditingController(text: "");
    
  var  _bodyController = TextEditingController(
    text:""
  );



  Future<void> send() async {
    final Email email = Email(
      body: "Имя: " + name.text + "\n Телефон: +7" + phone.text.toString()  + _bodyController.text,
      subject: "Заказ",
      recipients: ["5904517@gmail.com"],
      attachmentPaths: attachments,
      isHTML: false,
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'Заказ оформлен';
    } catch (error) {
      platformResponse = error.toString();
    }

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(platformResponse),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Оформление заказа',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: send,
            icon: Icon(Icons.send),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
             Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: name,
                onChanged: (text){
                  name.text == text;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'ФИО',
                  prefixIcon: Icon(Icons.person)
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: phone,
                onChanged: (text){
                  phone.text == text;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                 labelText: "Телефон",
                    prefixIcon: Icon(Icons.phone),
                    prefixText: " +7 ",
                ),
              ),
            ),
           
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  enabled: false,
                  focusNode: new FocusNode(),
                  enableInteractiveSelection: false,
                  controller: _bodyController = TextEditingController(text: "\n Заказ:\n" + product.message()),
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                      labelText: 'Заказ', border: OutlineInputBorder()),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
  