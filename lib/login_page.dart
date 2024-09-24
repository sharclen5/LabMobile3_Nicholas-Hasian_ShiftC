import 'package:flutter/material.dart';
import 'package:tugas3praktikum2024/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // ignore: prefer_typing_uninitialized_variables
  var namauser;

  void _saveUsername() async {
    // Inisialisasi SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Simpan Username ke local storage
    prefs.setString('username', _usernameController.text);
  }

  Widget _showInput(TextEditingController controller, String hint, bool obscure,
      IconData icon) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon),
      ),
    );
  }

  _showDialog(pesan, alamat) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(pesan),
            actions: [
              TextButton(
                child: const Text('Proceed'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => alamat,
                    ),
                  );
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Please Login First'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            _showInput(_usernameController, 'Username', false, Icons.person),
            _showInput(_passwordController, 'Password', true, Icons.lock),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Background color
              foregroundColor: Colors.white, // Text color
            ),
              child: const Text('Login'),
              onPressed: () {
                if (_usernameController.text == 'suisei' &&
                    _passwordController.text == 'hoshimachi') {
                  _saveUsername();
                  _showDialog('Logged in Successfully', const HomePage());
                } else {
                  _showDialog('Please check your Username or Password', const LoginPage());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
