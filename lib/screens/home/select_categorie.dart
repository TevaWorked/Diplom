import 'package:flutter_diplom/models/Product.dart';

List<Product> gardenProduct (){
  List<Product> list = [];
  for(Product i in products){
    if(i.categorie == "Для сада"){
      list.add(i);
    }
  }
  return list;
}

List<Product> homeProduct (){
  List<Product> list = [];
  for(Product i in products){
    if(i.categorie == "Для дома"){
      list.add(i);
    }
  }
  return list;
}

List<Product> remontProduct (){
  List<Product> list = [];
  for(Product i in products){
    if(i.categorie == "Ремонт"){
      list.add(i);
    }
  }
  return list;
}

List<Product> allProduct(){
  return products;
}