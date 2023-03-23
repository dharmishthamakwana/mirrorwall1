import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled15/screen/home/provider/home_provider.dart';
import 'package:untitled15/screen/home/view/multiscreen.dart';
import 'package:untitled15/screen/home/view/openscreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        )
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, routes: {
        '/': (context) => HomeScreen(),
        'open': (context) => WebScreen(),
      }),
    ),
  );
}
