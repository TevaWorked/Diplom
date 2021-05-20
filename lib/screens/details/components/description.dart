import 'package:flutter/material.dart';
import 'package:flutter_diplom/models/Product.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Text(
      product.description,
      style: TextStyle(
        height: 1.5,
      ),
    );
  }
}
