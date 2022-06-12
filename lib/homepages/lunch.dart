import 'package:flutter/material.dart';
import 'package:resep_apk/materials/model/carouselData.dart';
import 'package:resep_apk/materials/model/data/lunchData.dart';
import 'package:resep_apk/screens/detailpage.dart';

class LunchPage extends StatefulWidget {
  const LunchPage({Key? key}) : super(key: key);

  @override
  State<LunchPage> createState() => _LunchPageState();
}

class _LunchPageState extends State<LunchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lunch'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(child: CarouselLun()),
            Text('All Lunches', style: Theme.of(context).textTheme.labelLarge,),
            SizedBox(height: 14,),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 1.6,
                mainAxisSpacing: 2.0,
                children: List.generate(lunchData.length, (index) {
                  return Center(
                    child: LunCards(
                      lunch: lunchData[index],
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

class LunCards extends StatelessWidget {
  const LunCards({Key? key, required this.lunch}) : super(key: key);

  final LunchData lunch;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailLun(
                  lunchData: lunch,
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
              tag: lunch.imgUrl,
              child: SizedBox(
                height: 140.0,
                width: 170.0,
                child: Image.network(
                  lunch.imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              lunch.name,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
