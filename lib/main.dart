import 'package:bettereats_mobile/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: false,
      ),
      getPages: AppPages.routes,
      initialRoute: AppRoutes.HOME,
    );
  }
}