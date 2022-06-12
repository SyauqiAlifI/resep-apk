import 'package:flutter/material.dart';
import 'package:resep_apk/screens/setups.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(0, 114, 255, 1.0),
        Color.fromRGBO(0, 198, 255, 1.0),
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Padding(
        padding: const EdgeInsets.only(left: 48.0, right: 48.0, top: 230.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset('lib/materials/thumbnail.png'),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color.fromRGBO(44, 148, 230, 1.0)),
              ),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => Setups(),
                      transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                      transitionDuration: Duration(milliseconds: 800),
                    ),);
                },
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text('Get Started', style: TextStyle(color: Colors.black),),
                )
            )
          ],
        ),
      ),
    );
  }
}
