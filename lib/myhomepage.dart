import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController inputNama = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Jadwal Pelajaran")),
      backgroundColor: Color.fromARGB(255,255,255,255),
      body:Column(
        children: [
          Center(
            child: Container(
              width: 300,
              color: Color.fromARGB(255, 59, 199, 199),
              
            ),
          )
          
      ],)
    );
  }
}