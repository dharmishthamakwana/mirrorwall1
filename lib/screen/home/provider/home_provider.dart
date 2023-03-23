import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeProvider extends ChangeNotifier {
  WebViewController? webViewController;

  List Logos = [
    "assets/images/logo7.png",
    "assets/images/logo5.png",
    "assets/images/logo8.png",
    "assets/images/logo9.png"
  ];
  List names = [
    "Wikipidia",
    "W3School",
    "JavaTpoint",
    "TutorialsPoint",
  ];

  List urls = [
    "https://www.wikipedia.org/",
    "https://www.w3schools.com/",
    "https://www.javatpoint.com/",
    "https://www.tutorialspoint.com/",
  ];

  void loadurl(int inde) {
    webViewController = WebViewController();
    webViewController!.loadRequest(
      Uri.parse("${urls[inde]}"),
    );
  }
}
