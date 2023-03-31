import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../provider/home_provider.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;

  @override
  Widget build(BuildContext context) {
    homeProviderFalse = Provider.of<HomeProvider>(context, listen: false);
    homeProviderTrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller: homeProviderFalse!.webViewController!),
      ),
    );
  }
}
