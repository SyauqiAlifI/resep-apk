import 'package:flutter/material.dart';
import 'package:resep_apk/homepages/beverages.dart';
import 'package:resep_apk/homepages/lunch.dart';
import 'package:resep_apk/homepages/snack.dart';
import 'package:resep_apk/materials/model/carouselData.dart';
import 'package:resep_apk/materials/model/carouselHome.dart';

import 'drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Apk'),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to\nResep APK',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: 24),
                Column(
                  children: [
                    //  Beverages
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Beverages',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BeveragePage()));
                            },
                            child: Text('See more'))
                      ],
                    ),
                    Container(
                      child: CarouselBevHome(),
                    ),
                    SizedBox(height: 24,),
                    //  Lunch
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Lunch',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LunchPage()));
                            },
                            child: Text('See more'))
                      ],
                    ),
                    Container(
                      child: CarouselLunHome(),
                    ),
                    SizedBox(height: 24,),
                    //  Snack
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Snacks',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SnackPage()));
                            },
                            child: Text('See more'))
                      ],
                    ),
                    Container(
                      child: CarouselSnaHome(),
                    ),
                    SizedBox(height: 24,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
