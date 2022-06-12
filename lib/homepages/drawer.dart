import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              child: Image.asset('lib/materials/thumbnail.png', fit: BoxFit.cover,),
            ),
            ListTile(
              leading: ImageIcon(AssetImage("lib/materials/drinks.png")),
              title: Text('Beverages', style: Theme.of(context).textTheme.bodyMedium,),
              onTap: () {
                Navigator.pushNamed(context, '/bev');
              },
            ),
            ListTile(
              leading: ImageIcon(AssetImage("lib/materials/lunch.png")),
              title: Text('Lunch', style: Theme.of(context).textTheme.bodyMedium,),
              onTap: () {
                Navigator.pushNamed(context, '/lun');
              },
            ),
            ListTile(
              leading: ImageIcon(AssetImage("lib/materials/snack.png")),
              title: Text('Snack', style: Theme.of(context).textTheme.bodyMedium,),
              onTap: () {
                Navigator.pushNamed(context, '/sna');
              },
            ),
          ],
        ),
      ),
    );
  }
}
