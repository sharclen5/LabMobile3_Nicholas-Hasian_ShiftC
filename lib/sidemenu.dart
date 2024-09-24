import 'package:flutter/material.dart';
import 'package:tugas3praktikum2024/home_page.dart';
import 'package:tugas3praktikum2024/stillstillstellar.dart';
import 'package:tugas3praktikum2024/specter.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Back to Home'),
              GestureDetector(
                onTap: () {
                  // Navigate to the home page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: Image.asset(
                  'images/minisui.png', 
                  width: 100,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Still Still Stellar'),
            onTap: () {
              // Navigasi ke halaman Home
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StillStillStellar(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.album),
            title: const Text('Specter'),
            onTap: () {
              // Navigasi ke halaman About
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Specter(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
