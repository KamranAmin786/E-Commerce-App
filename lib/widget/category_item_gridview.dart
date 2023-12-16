import 'package:flutter/material.dart';
import 'package:touchdown/app_utils.dart';
import 'package:touchdown/widget/category_item_view.dart';
import 'package:touchdown/widget/category_widget_leading.dart';

class CategoryItemGridView extends StatefulWidget {
  const CategoryItemGridView({super.key});

  @override
  State<CategoryItemGridView> createState() => _CategoryItemGridViewState();
}

class _CategoryItemGridViewState extends State<CategoryItemGridView> {

  List<Map<String, dynamic>> category = [];

  @override
  void initState() {
    loadJsonData("assets/data/category.json").then((data) {
      if (data != null) {
        setState(() {
          category = data;
        });
      }
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: SizedBox(
        height: 170,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            const CategoryWidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Change this as needed
                  childAspectRatio: 1.7 / 4,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (context, index) {
                  return CategoryItemView(
                      category: category[index]);
                },
                itemCount: category.length,
              ),
            ),
            const CategoryWidget(),
          ],
        ),
      ),
    );
  }
}
