import 'package:flutter/material.dart';
import 'package:food_app/models/caegories_model.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({super.key, required this.categoryModel});

// .. we get the CategoryModel data from model folder
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              categoryModel.color.withOpacity(0.55),
              categoryModel.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(categoryModel.title,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground)),
        ),
      ),
    );
  }
}
