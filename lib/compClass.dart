import 'package:flutter_diplom/models/BuyProduct.dart';
import 'package:flutter_diplom/models/Product.dart';

BuyProduct buyProduct;
BuyProduct retProduct(Product product) {
  if (product == null) {
    print("000");
    buyProduct = new BuyProduct();
    return buyProduct;
  } else {
    print("111");

    return buyProduct;
  }
}
