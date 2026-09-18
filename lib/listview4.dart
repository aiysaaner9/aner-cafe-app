import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registrasi',
      debugShowCheckedModeBanner: false,
      home: TampilFormData(),
    );
  }
}

class TampilFormData extends StatefulWidget {
  const TampilFormData({super.key});

  //panggilform
  @override
  FormBioData createState() => FormBioData();
}

class FormBioData extends State<TampilFormData> {
  final _fromkey = GlobalKey<FormState>();

  // Deklarasi Object Controller Data
  TextEditingController nbpcontroll = TextEditingController();
  TextEditingController namacontroll = TextEditingController();
  TextEditingController jurusancontroll = TextEditingController();
  TextEditingController nohpcontroll = TextEditingController();

  // Deklarasi Data
  String? nbp;
  String? nama;
  String? jurusan;
  String? nohp;

  // Fungsi Penampilan Data
  void TampilData() {
    if (_fromkey.currentState!.validate()) {
      setState(() {
        nbp = nbpcontroll.text;
        nama = namacontroll.text;
        jurusan = jurusancontroll.text;
        nohp = nohpcontroll.text;
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Tampil Data Berhasil")));
    }
  }

  void Hapusdata() {
    if (_fromkey.currentState!.validate()) {
      setState(() {
        nbpcontroll.clear();
        namacontroll.clear();
        jurusancontroll.clear();
        nohpcontroll.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FORM REGISTRASI MAHASISWA UNIVERSITAS INTERNASIONAL XSA"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            color: Colors.grey,
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Form(
                      key: _fromkey,
                      child: Column(
                        children: [
                          Container(padding: EdgeInsets.all(10.0)),
                          TextFormField(
                            controller: nbpcontroll,
                            decoration: InputDecoration(
                              labelText: "Inputkan NoBP Anda : ",
                              icon: Icon(Icons.account_box_rounded),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11.0),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            style: const TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 12,
                            ),
                            validator:
                                (value) =>
                                    value!.isEmpty
                                        ? 'NoBP tidak boleh kosong'
                                        : null,
                          ),
                          Padding(padding: EdgeInsets.all(10.0)),
                          TextFormField(
                            controller: namacontroll,
                            decoration: InputDecoration(
                              labelText: "Inputkan Nama Lengkap Anda : ",
                              icon: Icon(Icons.person),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11.0),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            style: const TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 12,
                            ),
                            validator:
                                (value) =>
                                    value!.isEmpty
                                        ? 'Nama Lengkap tidak boleh kosong'
                                        : null,
                          ),
                          Padding(padding: EdgeInsets.all(10.0)),
                          TextFormField(
                            controller: jurusancontroll,
                            decoration: InputDecoration(
                              labelText: "Inputkan Jurusan Mahasiswa : ",
                              icon: Icon(Icons.work),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11.0),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            style: const TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 12,
                            ),
                            validator:
                                (value) =>
                                    value!.isEmpty
                                        ? 'Jurusan tidak boleh kosong'
                                        : null,
                          ),
                          Padding(padding: EdgeInsets.all(10.0)),
                          TextFormField(
                            controller: nohpcontroll,
                            decoration: InputDecoration(
                              labelText: "Inputkan NoHP Mahasiswa : ",
                              icon: Icon(Icons.phone_android),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11.0),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            style: const TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 12,
                            ),
                            validator:
                                (value) =>
                                    value!.isEmpty
                                        ? 'NoHP tidak boleh kosong'
                                        : null,
                          ),
                          SizedBox(
                            width: 300,
                            height: 100,
                            child: Container(
                              padding: EdgeInsets.all(25.0),
                              child: TextButton(
                                onPressed: TampilData,
                                child: Text("DAFTAR"),

                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  foregroundColor: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    if (nbp != null) ...[
                      Divider(),
                      Text(
                        "FORM REGISTRASI MAHASISWA UNIVERSITAS INTERNASIONAL XSA",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("NoBP Mahasiswa : $nbp"),
                      Text("Nama Lengkap Mahasiswa : $nama"),
                      Text("Jurusan Mahasiswa : $jurusan"),
                      Text("NoHP Mahasiswa : $nohp"),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
