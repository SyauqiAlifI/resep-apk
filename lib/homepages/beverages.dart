import 'package:flutter/material.dart';
import 'package:resep_apk/materials/model/carouselData.dart';

import '../materials/model/data/beveragesData.dart';
import '../screens/detailpage.dart';

class BeveragePage extends StatefulWidget {
  const BeveragePage({Key? key}) : super(key: key);

  @override
  State<BeveragePage> createState() => _BeveragePageState();
}

class _BeveragePageState extends State<BeveragePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beverages'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(child: CarouselBev()),
            Text('All Beverages', style: Theme.of(context).textTheme.labelLarge,),
            SizedBox(height: 14,),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 1.6,
                mainAxisSpacing: 2.0,
                children: List.generate(beveragesData.length, (index) {
                  return Center(
                    child: BevCards(
                      beverages: beveragesData[index],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class BevCards extends StatelessWidget {
  const BevCards({Key? key, required this.beverages}) : super(key: key);

  final BeveragesData beverages;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailBev(
                  beveragesData: beverages,
                )));
      },
      child: Card(
        elevation: 4.0,
        color: Colors.white,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: beverages.imgUrl,
              child: SizedBox(
                height: 140.0,
                width: 170.0,
                child: Image.network(
                  beverages.imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              beverages.name,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}