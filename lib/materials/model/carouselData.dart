
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:resep_apk/materials/model/data/beveragesData.dart';
import 'package:resep_apk/materials/model/data/lunchData.dart';
import 'package:resep_apk/materials/model/data/snackData.dart';

import '../../screens/detailpage.dart';


//  Beverages
class CarouselBev extends StatefulWidget {
  const CarouselBev({Key? key}) : super(key: key);

  @override
  State<CarouselBev> createState() => _CarouselBevState();
}

class _CarouselBevState extends State<CarouselBev> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Center(
        child: CarouselSlider.builder(
            itemCount: beveragesData.length,
            itemBuilder: (context, index, realIndex) {
              final item = beveragesData[index];
              return buildBevItem(item, index, context);
            },
            options: CarouselOptions(
                viewportFraction: 0.8,
                height: 200,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true)),
      ),
    );
  }
}

Widget buildBevItem(BeveragesData item, int index, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailBev(
                beveragesData: item,
              )));
    },
    child: Stack(alignment: AlignmentDirectional.center, children: [
      Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(14.0)),
        child: Image.network(
          item.imgUrl,
          fit: BoxFit.cover,
        ),
      ),
      Container(
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.black87, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.1, 0.9],),
            borderRadius: BorderRadius.circular(14.0),
        ),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0, bottom: 12.0),
            child: Text(
              item.name, style: TextStyle(color: Colors.white, fontSize: 18)
            ),
          ),
        ),
      )
    ]),
  );
}

//  Lunch
class CarouselLun extends StatefulWidget {
  const CarouselLun({Key? key}) : super(key: key);

  @override
  State<CarouselLun> createState() => _CarouselLunState();
}

class _CarouselLunState extends State<CarouselLun> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Center(
        child: CarouselSlider.builder(
            itemCount: lunchData.length,
            itemBuilder: (context, index, realIndex) {
              final item = lunchData[index];
              return buildLunItem(item, index, context);
            },
            options: CarouselOptions(
                viewportFraction: 0.8,
                height: 200,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true)),
      ),
    );
  }
}

Widget buildLunItem(LunchData item, int index, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailLun(
                lunchData: item,
              )));
    },
    child: Stack(alignment: AlignmentDirectional.center, children: [
      Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(14.0)),
        child: Image.network(
          item.imgUrl,
          fit: BoxFit.cover,
        ),
      ),
      Container(
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.black87, Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0.1, 0.9],),
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0, bottom: 12.0),
            child: Text(
                item.name, style: TextStyle(color: Colors.white, fontSize: 18)
            ),
          ),
        ),
      )
    ]),
  );
}

//  Snack
class CarouselSna extends StatefulWidget {
  const CarouselSna({Key? key}) : super(key: key);

  @override
  State<CarouselSna> createState() => _CarouselSnaState();
}

class _CarouselSnaState extends State<CarouselSna> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Center(
        child: CarouselSlider.builder(
            itemCount: snackData.length,
            itemBuilder: (context, index, realIndex) {
              final item = snackData[index];
              return buildSnaItem(item, index, context);
            },
            options: CarouselOptions(
                viewportFraction: 0.8,
                height: 200,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true)),
      ),
    );
  }
}

Widget buildSnaItem(SnackData item, int index, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailSna(
                snackData: item,
              )));
    },
    child: Stack(alignment: AlignmentDirectional.center, children: [
      Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(14.0)),
        child: Image.network(
          item.imgUrl,
          fit: BoxFit.cover,
        ),
      ),
      Container(
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.black87, Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0.1, 0.9],),
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0, bottom: 12.0),
            child: Text(
                item.name, style: TextStyle(color: Colors.white, fontSize: 18)
            ),
          ),
        ),
      )
    ]),
  );
}