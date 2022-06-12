import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:resep_apk/materials/model/data/beveragesData.dart';
import 'package:resep_apk/materials/model/data/lunchData.dart';
import 'package:resep_apk/materials/model/data/snackData.dart';

import '../../screens/detailpage.dart';

//  Beverages

class CarouselBevHome extends StatefulWidget {
  const CarouselBevHome({Key? key}) : super(key: key);

  @override
  State<CarouselBevHome> createState() => _CarouselBevHomeState();
}

class _CarouselBevHomeState extends State<CarouselBevHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Center(
        child: CarouselSlider.builder(
            itemCount: beveragesData.length,
            itemBuilder: (context, index, realIndex) {
              final item = beveragesData[index];
              return buildBevItemHome(item, index, context);
            },
            options: CarouselOptions(
                viewportFraction: 1,
                height: 200,
                enableInfiniteScroll: false,
                autoPlay: false,
                enlargeCenterPage: false)),
      ),
    );
  }
}

Widget buildBevItemHome(BeveragesData item, int index, BuildContext context) {
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
            stops: [0.1, 0.9],
          ),
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0, bottom: 12.0),
            child: Text(item.name,
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ),
      )
    ]),
  );
}

//  Lunch
class CarouselLunHome extends StatefulWidget {
  const CarouselLunHome({Key? key}) : super(key: key);

  @override
  State<CarouselLunHome> createState() => _CarouselLunHomeState();
}

class _CarouselLunHomeState extends State<CarouselLunHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Center(
        child: CarouselSlider.builder(
            itemCount: lunchData.length,
            itemBuilder: (context, index, realIndex) {
              final item = lunchData[index];
              return buildLunItemHome(item, index, context);
            },
            options: CarouselOptions(
                viewportFraction: 1,
                height: 200,
                enableInfiniteScroll: false,
                autoPlay: false,
                enlargeCenterPage: false)),
      ),
    );
  }
}

Widget buildLunItemHome(LunchData item, int index, BuildContext context) {
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
            stops: [0.1, 0.9],
          ),
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0, bottom: 12.0),
            child: Text(item.name,
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ),
      )
    ]),
  );
}

//  Snack
class CarouselSnaHome extends StatefulWidget {
  const CarouselSnaHome({Key? key}) : super(key: key);

  @override
  State<CarouselSnaHome> createState() => _CarouselSnaHomeState();
}

class _CarouselSnaHomeState extends State<CarouselSnaHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Center(
        child: CarouselSlider.builder(
            itemCount: snackData.length,
            itemBuilder: (context, index, realIndex) {
              final item = snackData[index];
              return buildSnaItemHome(item, index, context);
            },
            options: CarouselOptions(
                viewportFraction: 1,
                height: 200,
                enableInfiniteScroll: false,
                autoPlay: false,
                enlargeCenterPage: false)),
      ),
    );
  }
}

Widget buildSnaItemHome(SnackData item, int index, BuildContext context) {
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
            stops: [0.1, 0.9],
          ),
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0, bottom: 12.0),
            child: Text(item.name,
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ),
      )
    ]),
  );
}
