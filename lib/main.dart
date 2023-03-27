import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iwaris/route.dart';
import 'package:iwaris/theme.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "i-Waris",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      getPages: appRoutes(),
    );
  }
}
