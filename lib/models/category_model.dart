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

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
      name: 'Hot Tea',
      iconPath: 'assets/icons/hot-tea.svg',
      boxColor: const Color(0xff92a3fd),
    ));

    categories.add(CategoryModel(
      name: 'Egg',
      iconPath: 'assets/icons/egg.svg',
      boxColor: const Color(0xffc58bf2),
    ));

    categories.add(CategoryModel(
      name: 'Bread',
      iconPath: 'assets/icons/bread.svg',
      boxColor: const Color(0xff92a3fd),
    ));

    categories.add(CategoryModel(
      name: 'Fruits',
      iconPath: 'assets/icons/apple-snacks.svg',
      boxColor: const Color(0xffc58bf2),
    ));

    categories.add(CategoryModel(
      name: 'Burger',
      iconPath: 'assets/icons/burger.svg',
      boxColor: const Color(0xff92a3fd),
    ));

    categories.add(CategoryModel(
      name: 'Fish',
      iconPath: 'assets/icons/fish.svg',
      boxColor: const Color(0xffc58bf2),
    ));

    categories.add(CategoryModel(
      name: 'Fresh Jiuce',
      iconPath: 'assets/icons/juice.svg',
      boxColor: const Color(0xff92a3fd),
    ));

    categories.add(CategoryModel(
      name: 'Cookies',
      iconPath: 'assets/icons/cookies.svg',
      boxColor: const Color(0xffc58bf2),
    ));

    return categories;
  }
}
