import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // Tempat nyimpen username dan password
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Login"),
      ),

      body: Column(
        children: [

          // Input Username
          TextFormField(
            controller: username,
            decoration: InputDecoration(
              hintText: "Masukkan Username",
              border: OutlineInputBorder(),
            ),
          ),

          // Jarak
          Padding(
            padding: EdgeInsets.all(10),
          ),

          // Input Password
          TextFormField(
            controller: password,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Masukkan Password",
              border: OutlineInputBorder(),
            ),
          ),

          // Jarak
          Padding(
            padding: EdgeInsets.all(10),
          ),

          // Tombol Login
          ElevatedButton(
            child: Text("Login"),

            onPressed: () {
              print(username.text);
              print(password.text);
            },
          ),
        ],
      ),
    );
  }
}