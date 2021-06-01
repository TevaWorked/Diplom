// ignore: unused_import
import "package:flutter/material.dart";

class Product {
  final String image, name, description, imageBG;
  final int price, id;
  String categorie;
  int amount;

  Product(
      {this.id,
      this.name,
      this.categorie,
      this.description,
      this.image,
      this.imageBG,
      this.price,
      amount});
}

List<Product> products = [
  Product(
      id: 1,
      name: 'Садовый нож для прививки Cellfast 40-260',
      categorie: 'Для сада',
      description: "Отличительная особенность прививочных ножей – заточка" +
          "Острие затачивается под острым углом и с одной стороны," +
          "без зазубрин и остро, как бритва. Плоскость лезвия полируется." +
          "От остроты лезвия ножа зависит качество среза, а, " +
          "следовательно, и успех прививки.",
      image: "assets/images/knife.jpg",
      imageBG: "assets/images/knifeBG.png",
      price: 847,
      amount: 0),
  Product(
      id: 2,
      name: 'Горшочек для рассады, торфяной, 20 шт',
      categorie: 'Для сада',
      description:
          "Горшочек для рассады, торфяной, 20 шт  представляет собой необходимое для рассады изделие." +
              "При достижении растением определенных размеров, горшочек можно пересадить, не извлекая из него грунт.",
      image: "assets/images/Gorshek.jpg",
      imageBG: "assets/images/GorshekBG.png",
      price: 82,
      amount: 0),
  Product(
      id: 3,
      name: 'Лопата (штык заостренный, деревянный черенок) VERTO',
      categorie: 'Для сада',
      description:
          "Лопата (штык заостренный, деревянный черенок) VERTO 15G001 позволяет эффективно работать с тяжелыми и плотными грунтами." +
              "Зазубенная кромка легко входит в землю под любым углом. Преимущество заключается в наличии дополнительного усиления черенка",
      image: "assets/images/lopata.jpg",
      imageBG: "assets/images/lopataBG.png",
      price: 1794,
      amount: 0),
  Product(
      id: 4,
      name: 'Облегченные садовые вилы Центроинструмент Акапулько',
      categorie: 'Для сада',
      description:
          "Облегченные садовые вилы Центроинструмент Акапулько 0839 оснащены лезвием, выполненным из нержавеющей стали." +
              "Черенок, изготовленный из алюминиевого сплава, оснащен специальной ручкой для удобства работы.",
      image: "assets/images/Vila.jpg",
      imageBG: "assets/images/VilaBG.png",
      price: 1892,
      amount: 0),
  Product(
      id: 5,
      name: 'Веерные грабли Inforce ',
      categorie: 'Для сада',
      description:
          "Веерные грабли Inforce 06-12-12 - это легкий и практичный инструмент для сбора опавшей листвы и мусора." +
              "Рабочая часть изготовлена из полипропилена высокого качества. Черенок изготовлен из окрашенного алюминия." +
              "Эргономичная конструкция граблей повышает качество и снижает трудоемкость работы. Максимальная ширина веера - 650 мм.",
      image: "assets/images/Grabli.jpg",
      imageBG: "assets/images/Grabli.png",
      price: 905,
      amount: 0),
      Product(
      id: 6,
      name: 'Горшочек для рассады, торфяной, 20 шт',
      categorie: 'Для дома',
      description:
          "Горшочек для рассады, торфяной, 20 шт  представляет собой необходимое для рассады изделие." +
              "При достижении растением определенных размеров, горшочек можно пересадить, не извлекая из него грунт.",
      image: "assets/images/Gorshek.jpg",
      imageBG: "assets/images/GorshekBG.png",
      price: 82,
      amount: 0),
     Product(
      id: 7,
      name: 'Веерные грабли Inforce ',
      categorie: 'Ремонт',
      description:
          "Веерные грабли Inforce 06-12-12 - это легкий и практичный инструмент для сбора опавшей листвы и мусора." +
              "Рабочая часть изготовлена из полипропилена высокого качества. Черенок изготовлен из окрашенного алюминия." +
              "Эргономичная конструкция граблей повышает качество и снижает трудоемкость работы. Максимальная ширина веера - 650 мм.",
      image: "assets/images/Grabli.jpg",
      imageBG: "assets/images/Grabli.png",
      price: 905,
      amount: 0),
];
