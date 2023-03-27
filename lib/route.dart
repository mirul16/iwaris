import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:iwaris/splash.dart';
import 'package:iwaris/welcome.dart';

appRoutes() => [
      GetPage(
        name: '/',
        page: () => const SplashScreenPage(),
        /* transition: Transition.circularReveal,
        transitionDuration: const Duration(milliseconds: 500), */
      ),
      GetPage(
        name: '/welcome',
        page: () => const WelcomePage(),
        middlewares: [MyMiddelware()],
      ),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    debugPrint(page?.name);
    return super.onPageCalled(page);
  }
}
