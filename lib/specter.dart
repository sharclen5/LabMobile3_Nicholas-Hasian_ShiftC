import 'package:flutter/material.dart';
import 'package:tugas3praktikum2024/sidemenu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Specter extends StatefulWidget {
  const Specter({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SpecterState createState() => _SpecterState();
}

class _SpecterState extends State<Specter> {
  // ignore: prefer_typing_uninitialized_variables
  var namauser;
  void _LoadUsername() async {
    // Inisialisasi share preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Ambil Username yang sudah tersimpan
    namauser = prefs.getString('username');
    // Set username on UI
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Specter'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/specter.png'),
              const Padding(
                padding: EdgeInsets.all(12.0), // Add padding here
                child: Text(
                  'Specter is the second studio album by Japanese Virtual YouTuber Hoshimachi Suisei. It was released on January 25, 2023, by Cover Corporation. The album was produced by Tomoya Tabuchi, Tatsuya Kitani, Ayase, Ryo Miyata, Kenkaiyoshi, MI8k, Nio-P, Yosuke Kori, Police Piccadilly, Iwami Takashi & JIN. The album was supported by four singles: "Syakunetsu Nite Junjou (Wii-Wii-Woo)", "Template", "My Happy Transmission" & "Soirée".',
                  textAlign: TextAlign.justify, // Justify text alignment
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'No',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Title',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Writer(s)',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Producer(s)',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Length',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('1'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Syakunetsu Nite Junjou (Wii-Wii-Woo)"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('田淵智也'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('田淵智也'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3:48'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('2'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Template'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('キタニタツヤ'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('キタニタツヤ'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3:07'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("みちづれ"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Ayase'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Ayase'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3:13'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('4'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('褪せたハナミドリ'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('宮田“レフティ”リョウ'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('宮田“レフティ”リョウ'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3:37'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('5'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('TRUE GIRL SHOW'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('ケンカイヨシ'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('ケンカイヨシ'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3:49'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('6'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('放送室'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('MI8k'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('MI8k'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3:29'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('7'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('デビュタントボール'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Hoshimachi Suisei'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Nio-P'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('5:48'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('8'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('7Days'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('郡陽介'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('郡陽介'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3:34'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('9'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Damn Good Day'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Police Piccadilly'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Police Piccadilly'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3:02'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('10'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Soirée"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('ナナホシ管弦楽団'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('岩見陸'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3:47'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('11'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Newton'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('JIN'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('JIN'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3:36'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: const Sidemenu(),
    );
  }
}
