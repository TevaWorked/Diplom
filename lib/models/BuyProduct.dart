import 'dart:developer';

import "package:flutter/material.dart";
import 'package:flutter_diplom/models/Product.dart';

class BuyProduct extends Product {
  Product product;
  bool fun = true;
  List<Product> products = [];
  BuyProduct({
    this.product,
  });
  void fillList(Product product) {
    products.add(product);

    print(product.name);
    print(products.length);
  }

  List<BuyProduct> retList() {
    return products;
  }

  void addAmount(Product product, int sum) {
    product.amount = sum;

    print(product.name);
  }

  int allPrice() {
    int sum = 0;
    for (int i = 0; i < products.length; i++) {
      sum += products[i].amount * products[i].price;
    }
    return sum;
  }

  bool prov(Product product) {
    for (var i in products) {
      if (product == i) {
        return false;
      }
    }
    return true;
  }
}
