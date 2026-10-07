import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // Tempat menyimpan email / username
  TextEditingController username = TextEditingController();

  // Tempat menyimpan password
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Warna halaman
      backgroundColor: Colors.white,

      body: Column(
        children: [

          // Jarak dari atas
          Padding(
            padding: EdgeInsets.all(80),
          ),

          // Tulisan Selamat Datang
          Text(
            "Selamat Datang",
            style: TextStyle(
              fontSize: 30,
            ),
          ),

          // Jarak
          Padding(
            padding: EdgeInsets.all(20),
          ),

          // Input Email / Username
          Container(
            width: 300,
            child: TextFormField(
              controller: username,

              decoration: InputDecoration(
                hintText: "Email/username",

                // Icon amplop
                prefixIcon: Icon(Icons.email),

                // Garis kotak
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),

          // Jarak
          Padding(
            padding: EdgeInsets.all(10),
          ),

          // Input Password
          Container(
            width: 300,
            child: TextFormField(
              controller: password,

              // Password jadi titik-titik
              obscureText: true,

              decoration: InputDecoration(
                hintText: "Password",

                // Icon kunci
                prefixIcon: Icon(Icons.lock),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),

          // Jarak
          Padding(
            padding: EdgeInsets.all(35),
          ),

          // Tombol Sign in
          ElevatedButton(
            child: Text("Sign in"),

            onPressed: () {

              // Menampilkan username
              print(username.text);

              // Menampilkan password
              print(password.text);
            },
          ),
        ],
      ),
    );
  }
}