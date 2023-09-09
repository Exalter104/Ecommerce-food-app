import 'package:flutter/material.dart';
import 'package:food_app/models/dummy_data.dart';
import 'package:food_app/widgets/grid_item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick your Category"),
      ),
      body: GridView(
          padding: const EdgeInsets.all(24),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10),
          children: [
            ...availableCategories
                .map((category) => CategoryGridItem(categoryModel: category))
                .toList()
          ]),
    );
  }
}
