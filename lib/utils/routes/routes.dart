import 'package:food_app/models/dummy_data.dart';
import 'package:food_app/views/category_screen.dart';
import 'package:food_app/views/meal_Screen.dart';
import 'package:food_app/views/splash_screen.dart';
import 'package:get/get.dart';

import 'routes_name.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: RoutesName.categoryScreen,
          page: () => const CategoryScreen(),
        ),
        GetPage(
          name: RoutesName.mealsScreen,
          page: () => MealsScreen(
            title: "some category ...",
            meals: dummyMeals,
          ),
        ),
      ];
}
