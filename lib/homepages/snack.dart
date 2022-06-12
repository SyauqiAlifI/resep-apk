import 'package:flutter/material.dart';
import 'package:resep_apk/materials/model/carouselData.dart';
import 'package:resep_apk/materials/model/data/snackData.dart';
import 'package:resep_apk/screens/detailpage.dart';

class SnackPage extends StatefulWidget {
  const SnackPage({Key? key}) : super(key: key);

  @override
  State<SnackPage> createState() => _SnackPageState();
}

class _SnackPageState extends State<SnackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(child: CarouselSna()),
            Text('All Snacks', style: Theme.of(context).textTheme.labelLarge,),
            SizedBox(height: 14,),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 1.6,
                mainAxisSpacing: 2.0,
                children: List.generate(snackData.length, (index) {
                  return Center(
                    child: SnaCards(
                      snack: snackData[index],
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

class SnaCards extends StatelessWidget {
  const SnaCards({Key? key, required this.snack}) : super(key: key);

  final SnackData snack;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailSna(
                  snackData: snack,
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
              tag: snack.imgUrl,
              child: SizedBox(
                height: 140.0,
                width: 170.0,
                child: Image.network(
                  snack.imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              snack.name,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
