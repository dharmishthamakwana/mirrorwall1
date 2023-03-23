import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? T, F;

  @override
  Widget build(BuildContext context) {
    T = Provider.of<HomeProvider>(context, listen: false);
    F = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade200,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade400,
          title: Text(
            "all Educational",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: GridView.builder(
            itemCount: F!.Logos.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 220),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'open');
                  F!.loadurl(index);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset(
                          "${F!.Logos[index]}",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "${F!.names[index]}",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
