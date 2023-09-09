import 'package:flutter/material.dart';
import 'package:food_app/utils/colors/app_colors.dart';
import 'package:food_app/views/category_screen.dart';
import 'package:get/get.dart';

import 'utils/routes/routes.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Ecommerce Food App',
        theme: theme,
        getPages: AppRoutes.appRoutes(),
        home: const CategoryScreen());
  }
}
