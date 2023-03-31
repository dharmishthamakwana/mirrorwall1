import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;

  @override
  Widget build(BuildContext context) {
    homeProviderFalse = Provider.of<HomeProvider>(context, listen: false);
    homeProviderTrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade600,
          title: Text(
            "all Educational",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: GridView.builder(
            itemCount: homeProviderFalse!.Logos.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 250,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'open');
                  homeProviderFalse!.loadurl(index);
                },
                child: Container(
                  // height: 200,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade100,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Image.asset(

                              "${homeProviderFalse!.Logos[index]}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.shade500,
                            borderRadius: BorderRadius.circular(10)),
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            "${homeProviderFalse!.name[index]}",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
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
