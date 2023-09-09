import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'resources/colors/app_colors.dart';
import 'resources/routes/routes.dart';
import 'views/splash_screen.dart';

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
        home: const SplashScreen());
  }
}
