import 'package:flutter/material.dart';
import 'package:uts_aiysaaner_220087/nav_drawing.dart';
import 'package:uts_aiysaaner_220087/view_tabbar1.dart' as Tabbar1;
import 'package:uts_aiysaaner_220087/view_tabbar2.dart' as Tabbar2;
import 'package:uts_aiysaaner_220087/view_tabbar3.dart' as Tabbar3;
import 'package:uts_aiysaaner_220087/view_tabbar4.dart' as Tabbar4;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ShowAppBarWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ShowAppBarWidget extends StatelessWidget {
  const ShowAppBarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Beranda"),
              Tab(text: "Fakultas"),
              Tab(text: "Hubungi Kami"),
              Tab(text: "Registrasi"),
            ],
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.yellow,
          ),
          title: const Text('UJIAN TENGAH SEMESTER'),
          backgroundColor: Colors.grey,
          foregroundColor: Colors.black,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_circle),
              tooltip: 'Show Registrasi',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return Scaffold(
                        body: Form(
                          child: Container(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: "Inputkan NoBP Anda",
                                    labelText: "NoBP",
                                    icon: Icon(Icons.account_box_rounded),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.logout),
              tooltip: 'Show Notifikasi',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Anda Berhasil Logout')),
                );
              },
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Tabbar1.Tabbar1(),
            Tabbar2.Tabbar2(),
            Tabbar3.Tabbar3(),
            Tabbar4.Tabbar4(),
          ],
        ),
      ),
    );
  }
}
