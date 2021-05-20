import 'dart:developer';

import "package:flutter/material.dart";
import 'package:flutter_diplom/models/Product.dart';

class BuyProduct extends Product {
  Product product;
  bool fun = true;
  int allprice = 0;
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

  void allPrice(int amount, int count) {
    allprice += amount * count;
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
