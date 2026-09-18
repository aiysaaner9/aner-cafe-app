import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BERANDA"),
        backgroundColor: const Color.fromARGB(255, 53, 96, 112),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // Foto Saya
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'gambar/logoXsaner.jpg',
                width: 5000,
                height: 5000,
                fit: BoxFit.cover,
              ),
            ),
            // Overlay dengan teks
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                    255,
                    136,
                    72,
                    72,
                  ).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "AIYSA ANER (22101152610087) - KELAS SI-11",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Saya adalah mahasiswa S1 jurusan SISTEM INFORMASI yang mau jadi HACKER, akan tetapi kata dosen saya harus S2 dulu. Sebenarnya saya ingin kuliah dengan jurusan Hukum, tetapi mama saya tidak memperbolehkan saya kuliah di pekanbaru. Sedangkan saya merupakan siswa eligible, dan saya bisa langsung mendaftar ke UNRI tanpa tes lagi. Lalu akhirnya saya mengikuti UTBK dengan mengambil pilihan jurusan hukum dan sistem informasi UNAND, akan tetapi takdir berkata lain. Akhirnya saya masuk Universitas Swasta dengan pilihan ke-2 saya, yaitu Sistem Informasi. Saya suka belajar coding, tetapi dibarengi dengan pusing juga. Saya mengejar cumlaude 3,5 tahun Aamiin Allahuma Aamiin ",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
