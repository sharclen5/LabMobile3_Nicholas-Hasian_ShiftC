import 'package:flutter/material.dart';
import 'package:tugas3praktikum2024/sidemenu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StillStillStellar extends StatefulWidget {
  const StillStillStellar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _StillStillStellarState createState() => _StillStillStellarState();
}

class _StillStillStellarState extends State<StillStillStellar> {
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
        title: const Text('Still Still Stellar'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/stillstillstellar.png'),
              const Padding(
                padding: EdgeInsets.all(12.0), // Add padding here
                child: Text(
                  'Still Still Stellar is the debut studio album by Japanese Virtual YouTuber Hoshimachi Suisei. It was released on September 29, 2021, by Cover Corporation. The album was produced by TAKU INOUE, 酒井拓也, キタニタツヤ, 佐藤厚仁, 堀江晶太, *Luna, ナノウ, 櫻澤ヒカル & みきとP. The album was supported by eight singles: "NEXT COLOR PLANET", "天球、彗星は夜を跨いで", "GHOST", "バイバイレイニー", "自分勝手Dazzling", "Bluerose", "comet" & "駆けろ".',
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
                          child: Text('Stellar Stellar'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Hoshimachi Suisei'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('TAKU INOUE'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('5:01'),
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
                          child: Text('NEXT COLOR PLANET'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Hoshimachi Suisei'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('酒井拓也'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('4:19'),
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
                          child: Text('天球、彗星は夜を跨いで'),
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
                          child: Text('4:15'),
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
                          child: Text('GHOST'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Hoshimachi Suisei'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('佐藤厚仁'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('4:43'),
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
                          child: Text('バイバイレイニー'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('堀江晶太'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('堀江晶太'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3:33'),
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
                          child: Text('自分勝手Dazzling'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Rute'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('酒井'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3:39'),
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
                          child: Text('Bluerose'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('夏代孝明'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('夏代孝明 • 渡辺拓也'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3:44'),
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
                          child: Text('comet'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('*Luna'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('*Luna'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('4:04'),
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
                          child: Text('Andromeda'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('コヤマヒデカズ'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('コヤマヒデカズ'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('4:54'),
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
                          child: Text("Je t'aime。"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('櫻澤ヒカル'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('櫻澤ヒカル'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3:21'),
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
                          child: Text('Starry Jet'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('こだまさおり'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('櫻澤 • 齋藤大'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('4:10'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('12'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('駆けろ'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('みきとP'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('みきとP'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3:52'),
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
