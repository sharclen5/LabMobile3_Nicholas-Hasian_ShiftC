import 'package:flutter/material.dart';
import 'package:tugas3praktikum2024/sidemenu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    _LoadUsername();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        // Wrap Column with SingleChildScrollView
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(20.0), // Add padding here
                child: Text(
                  'Hoshimachi Suisei',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Image.asset('images/Hoshimachi_Suisei.png'),
              const Padding(
                padding: EdgeInsets.all(12.0), // Add padding here
                child: Text(
                  "Hoshimachi Suisei (星街すいせい) is a Japanese virtual YouTuber. She began posting videos as an independent creator in March 2018. In May 2019, she became affiliated with Hololive Production through their newly created music label, INoNaKa Music, before joining the agency's main branch later the same year. Her YouTube activity consists primarily of live streaming herself singing karaoke, playing video games, talking to her fans, or collaborating with other talents. She is particularly well known among fans for her skill at Tetris and her singing ability.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const Text('Signature', style: TextStyle(fontSize: 20)),
              Image.asset(
                'images/sign.png',
                width: 300,
                height: 300,
              ),
            ],
          ),
        ),
      ),
      drawer: const Sidemenu(),
    );
  }
}
