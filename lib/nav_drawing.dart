import 'package:flutter/material.dart';
import 'package:uts_aiysaaner_220087/listview1.dart' as Page1;
import 'package:uts_aiysaaner_220087/listview2.dart' as Page2;
import 'package:uts_aiysaaner_220087/listview3.dart' as Page3;
import 'package:uts_aiysaaner_220087/listview4.dart' as Page4;

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerItem(
            icon: Icons.account_box_sharp,
            text: 'BERANDA',
            // ignore: avoid_print
            // onTap: () => print('Tap My Files')
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Page1.Page1()),
              );
            },
          ),
          _drawerItem(
            icon: Icons.person,
            text: 'FAKULTAS',
            // ignore: avoid_print
            // onTap: () => print('Tap My Files')
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Page2.Page2()),
              );
            },
          ),
          _drawerItem(
            icon: Icons.person,
            text: 'CONTACT US',
            // ignore: avoid_print
            // onTap: () => print('Tap My Files')
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Page3.Page3()),
              );
            },
          ),
          _drawerItem(
            icon: Icons.explore,
            text: 'REGISTRASI',
            // ignore: avoid_print
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Page4.Page4()),
              );
            },
          ),
          const Divider(height: 25, thickness: 1),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text(
              "Labels",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _drawerItem({
  required IconData icon,
  required String text,
  required GestureTapCallback onTap,
}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
