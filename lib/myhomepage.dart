import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //pembuatan variabel yg akan di pakai
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
              color: Color.fromARGB(21, 148, 161, 11),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Masukkan Nama Kamu",
                  border: OutlineInputBorder(),
                ),
                //kontroler untuk
                controller: inputNama,
                //ketika di krm nanti
                onSubmitted: (values){
                  //isi blabla
                  inputNama.text = values;
                
                },
                ),
              ),

            ),
            ElevatedButton(
              
              child: Text("Tampilkan Nama"),
              onPressed: (){
                
                print(inputNama.text);
              },
          ),
          
      ],
      ),
    );
  }
}