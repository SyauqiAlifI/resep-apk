import 'package:flutter/material.dart';
import 'package:resep_apk/materials/model/data/beveragesData.dart';
import 'package:resep_apk/materials/model/data/lunchData.dart';
import 'package:resep_apk/materials/model/data/snackData.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DetailBev extends StatelessWidget {
  const DetailBev({Key? key, required this.beveragesData}) : super(key: key);

  final BeveragesData beveragesData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SlidingUpPanel(
        maxHeight: MediaQuery.of(context).size.height * 0.7,
        minHeight: MediaQuery.of(context).size.height * 0.4,
        //untuk background gelap saat sliding up
        backdropEnabled: true,
        //untuk menaikan image saat sliding up
        parallaxEnabled: true,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 350),
            child: Hero(
              tag: beveragesData.imgUrl,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  child: Image.network(
                    beveragesData.imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        panelBuilder: (controller) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 5,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(24)
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  //nama minuman
                  Text(
                    beveragesData.name,
                    style: const TextStyle(
                        fontSize: 25,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.bold),
                  ),

                  //deskripsi minuman
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      beveragesData.desc,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  //title bahan
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                    child: Text(
                      beveragesData.titleBahan1,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //bahan
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      beveragesData.bahan1,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  //title bahan 1
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                    ),
                    child: Text(
                      beveragesData.titleBahan2,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //bahan 2
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      beveragesData.bahan2,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  //title bahan 3
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                    ),
                    child: Text(
                      beveragesData.titleBahan3,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //bahan 3
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      beveragesData.bahan3,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  //title cara
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                    ),
                    child: Text(
                      beveragesData.titleCara,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //cara
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      beveragesData.cara,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
    );
  }
}

class DetailLun extends StatelessWidget {
  const DetailLun({Key? key, required this.lunchData}) : super(key: key);

  final LunchData lunchData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SlidingUpPanel(
        maxHeight: MediaQuery.of(context).size.height * 0.7,
        minHeight: MediaQuery.of(context).size.height * 0.4,
        //untuk background gelap saat sliding up
        backdropEnabled: true,
        //untuk menaikan image saat sliding up
        parallaxEnabled: true,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 350),
            child: Hero(
              tag: lunchData.imgUrl,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  child: Image.network(
                    lunchData.imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        panelBuilder: (controller) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 5,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(24)
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  //nama minuman
                  Text(
                    lunchData.name,
                    style: const TextStyle(
                        fontSize: 25,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.bold),
                  ),

                  //deskripsi minuman
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      lunchData.desc,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  //title bahan
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                    child: Text(
                      lunchData.titleBahan1,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //bahan
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      lunchData.bahan1,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  //title bahan 1
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                    ),
                    child: Text(
                      lunchData.titleBahan2,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //bahan 2
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      lunchData.bahan2,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  //title bahan 3
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                    ),
                    child: Text(
                      lunchData.titleBahan3,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //bahan 3
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      lunchData.bahan3,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  //title cara
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                    ),
                    child: Text(
                      lunchData.titleCara,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //cara
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      lunchData.cara,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
    );
  }
}

class DetailSna extends StatelessWidget {
  const DetailSna({Key? key, required this.snackData}) : super(key: key);

  final SnackData snackData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SlidingUpPanel(
        maxHeight: MediaQuery.of(context).size.height * 0.7,
        minHeight: MediaQuery.of(context).size.height * 0.4,
        //untuk background gelap saat sliding up
        backdropEnabled: true,
        //untuk menaikan image saat sliding up
        parallaxEnabled: true,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 350),
            child: Hero(
              tag: snackData.imgUrl,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  child: Image.network(
                    snackData.imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        panelBuilder: (controller) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 5,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(24)
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  //nama minuman
                  Text(
                    snackData.name,
                    style: const TextStyle(
                        fontSize: 25,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.bold),
                  ),

                  //deskripsi minuman
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      snackData.desc,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  //title bahan
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                    child: Text(
                      snackData.titleBahan1,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //bahan
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      snackData.bahan1,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  //title bahan 1
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                    ),
                    child: Text(
                      snackData.titleBahan2,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //bahan 2
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      snackData.bahan2,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  //title bahan 3
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                    ),
                    child: Text(
                      snackData.titleBahan3,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //bahan 3
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      snackData.bahan3,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  //title cara
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                    ),
                    child: Text(
                      snackData.titleCara,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //cara
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      snackData.cara,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
    );
  }
}
