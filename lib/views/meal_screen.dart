// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food_app/models/categories_model.dart';
import 'package:food_app/models/meal_model.dart';
import 'package:food_app/widgets/meals_items.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen(
      {super.key,
      required this.title,
      required this.meals,
      required this.categoryModel});
  final String title;
  final List<Meal> meals;
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    Widget contents =
        ListView.builder(itemBuilder: (ctx, index) => Text(meals[index].title));

    if (meals.isEmpty) {
      contents = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Uh no! No meals found.",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Please selecting a different  category",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            )
          ],
        ),
      );
    }
    if (meals.isNotEmpty) {
      contents = ListView.builder(
          itemCount: meals.length,
          itemBuilder: (ctx, index) {
            return MealItem(meal: meals[index]);
          });
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: contents);
  }
}
