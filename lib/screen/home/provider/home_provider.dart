import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeProvider extends ChangeNotifier {
  WebViewController? webViewController;

  List Logos = [
    "assets/images/1.png",
    "assets/images/w3schools.png",
    "assets/images/logo8.png",
    "assets/images/logo9.png",
    "assets/images/Byjus.png",
    "assets/images/62a63a4e03a870b920cbfd49.png",

  ];
  List name = [
    "Wikipidia",
    "W3School",
    "JavaTpoint",
    "TutorialsPoint",
    "byju's",
    "khan academy",
    "EDApp",
  ];

  List urls = [
    "https://www.wikipedia.org/",
    "https://www.w3schools.com/",
    "https://www.javatpoint.com/",
    "https://www.tutorialspoint.com/",
    "https://byjus.com/",
    "https://www.khanacademy.org/",
    "https://www.edapp.com/",
  ];

  void loadurl(int inde) {
    webViewController = WebViewController();
    webViewController!.loadRequest(
      Uri.parse("${urls[inde]}"),
    );
  }
}
