import 'dart:async';
import 'package:flutter/material.dart';

import 'package:iwaris/welcome.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  Future<void> initializeSettings() async {
    await Future.delayed(const Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initializeSettings(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return waitingView();
        } else {
          if (snapshot.hasError) {
            return errorView(snapshot);
          } else {
            return const WelcomePage();
          }
        }
      },
    );
  }

  Scaffold errorView(AsyncSnapshot<Object?> snapshot) {
    return Scaffold(body: Center(child: Text('Error: ${snapshot.error}')));
  }

  Scaffold waitingView() {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(child: Image.asset('assets/img/appstore.png')),
        ));
  }
}
