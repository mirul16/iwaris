import 'package:flutter/material.dart';

import 'package:webviewx/webviewx.dart';
import 'package:iwaris/webview.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late WebViewXController webviewController;
  get screenSize => MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: WebViewClient()
                    .buildPage('https://iwaris.or.id/live', screenSize * 1.2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
