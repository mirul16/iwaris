import 'dart:math';

import 'package:webviewx/webviewx.dart';

class WebViewClient {
  late WebViewXController webviewController;

  WebViewX buildPage(url, screenSize) {
    return WebViewX(
        initialContent: url,
        initialSourceType: SourceType.url,
        height: screenSize.height / 1.20,
        width: max(screenSize.width, 1366),
        onWebViewCreated: (controller) => webviewController = controller);
  }
}
