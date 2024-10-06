import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_first_landing_page/models/category_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _searchField(),
        const SizedBox(
          height: 40,
        ),
        _categoriesSection(),
      ]),
    );
  }

////////////////AppBar///////////////////////
AppBar appBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: const Text(
      'Breakfast',
      style: TextStyle(
          color: Color.fromARGB(255, 37, 26, 26),
          fontSize: 22,
          fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
    elevation: 0.0,
    leading: GestureDetector(
      onTap: () {
        print("Back button taped");
      },
      child: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10)),
        child: SvgPicture.asset(
          'assets/icons/back.svg',
          height: 20,
          width: 20,
        ),
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          print("Action button taped");
        },
        child: Container(
          width: 37,
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)),
          child: SvgPicture.asset(
            'assets/icons/dots.svg',
            height: 20,
            width: 20,
          ),
        ),
      ),
    ],
  );
}

////////////////SecrchField///////////////////////
Container _searchField() {
  return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0xff1d1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
          decoration: InputDecoration(
              hintText: 'Search Pancake',
              hintStyle: TextStyle(color: Color(0xffDDDADA)),
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  'assets/icons/search.svg',
                  color: Color(0xffDDDADA),
                  height: 20,
                  width: 20,
                ),
              ),
              suffixIcon: Container(
                width: 100,
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      VerticalDivider(
                        color: Colors.black,
                        indent: 10,
                        endIndent: 10,
                        thickness: 0.1,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: SvgPicture.asset(
                          'assets/icons/filter.svg',
                          color: Color(0xffDDDADA),
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none))));
}

////////////////Categories///////////////////////
  Column _categoriesSection() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Cetegory',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Container(
          height: 120,
          // color: Colors.green,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20, right: 20),
              itemCount: categories.length,
              separatorBuilder: (context, index) => const SizedBox(
                    width: 20,
                  ),
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: categories[index].boxColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              categories[index].iconPath,
                              height: 50,
                              width: 50,
                            ),
                          )),
                          Text(
                            categories[index].name,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight:  FontWeight.w400,

                            ),
                          )
                    ],
                  ),
                );
              }),
        ),
      ]);
  }
}