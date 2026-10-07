import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController inputUsername = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  void dispose() {
    inputUsername.dispose();
    inputPassword.dispose();
    super.dispose();
  }

  void login() {
    String username = inputUsername.text.trim();
    String password = inputPassword.text;

    // Username / password kosong
    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Username dan password tidak boleh kosong!"),
        ),
      );
      return;
    }

    // Username dan password benar
    if (username == "admin" && password == "12345") {
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Username atau password salah!"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: const Color.fromARGB(245, 198, 166, 216),
      ),

      backgroundColor: const Color.fromARGB(245, 198, 166, 216),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            Center(
              child: Image(
                image: const AssetImage('asset/logo.png'),
                width: 300,
                height: 250,
              ),
            ),

            const SizedBox(height: 20),

            // USERNAME
            Center(
              child: SizedBox(
                width: 300,
                child: TextFormField(
                  controller: inputUsername,

                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(
                      245,
                      248,
                      247,
                      252,
                    ),
                    filled: true,

                    hintText: 'Masukan Username',

                    prefixIcon: const Icon(Icons.person),

                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // PASSWORD
            Center(
              child: SizedBox(
                width: 300,
                child: TextFormField(
                  controller: inputPassword,

                  obscureText: true,

                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(
                      245,
                      248,
                      247,
                      252,
                    ),
                    filled: true,

                    hintText: 'Masukan Password',

                    prefixIcon: const Icon(Icons.lock),

                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // TOMBOL LOGIN
            ElevatedButton.icon(
              onPressed: login,
              icon: const Icon(Icons.login),
              label: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}