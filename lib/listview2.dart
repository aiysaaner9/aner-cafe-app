import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  final List<String> days = [
    "ILMU KOMPUTER",
    "EKONOMI DAN BISNIS",
    "PSIKOLOGI",
    "KEGURUAN ILMU PENDIDIKAN",
    "DESIGN KOMUNIKAS",
    "TEKNIK",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Builder - Separated"),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ListView.separated(
                itemCount: days.length,
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 3,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: const Color.fromARGB(
                          255,
                          167,
                          176,
                          39,
                        ),
                        child: Text(
                          days[index][0],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text(
                        days[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("FAKULTAS ${days[index]}"),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
