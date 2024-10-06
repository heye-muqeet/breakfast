import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
      name: 'Salad',
      iconPath: 'assets/icons/plate.png',
      boxColor: Color(0xff92a3fd),
    ));

    categories.add(CategoryModel(
      name: 'Cake',
      iconPath: 'assets/icons/pancakes.png',
      boxColor: Color(0xffc58bf2),
    ));

    categories.add(CategoryModel(
      name: 'Pie',
      iconPath: 'assets/icons/pie.png',
      boxColor: Color(0xff92a3fd),
    ));

    categories.add(CategoryModel(
      name: 'Smoothies',
      iconPath: 'assets/icons/orange-snacks.png',
      boxColor: Color(0xffc58bf2),
    ));

    return categories;
  }
}
