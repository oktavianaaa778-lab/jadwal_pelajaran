import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController inputNama = TextEditingController();

  @override
  void dispose() {
    inputNama.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jadwal Pelajaran"),
        backgroundColor: const Color.fromARGB(245, 198, 166, 216
         
        ),
      ),

      backgroundColor: const Color.fromARGB(245, 198, 166, 216
       
      ),

      body: Column(
        children: [
          const SizedBox(height: 30),

          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                controller: inputNama,

                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(245,
                      248,
                      247,
                      252,
                    
                  ),
                  hintText: 'Masukan Nama Kamu',
                  filled: true,

                  prefixIcon: Icon(Icons.person),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          ElevatedButton.icon(
            onPressed: () {
              print(inputNama.text);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "Halo ${inputNama.text}!",
                  ),
                ),
              );
            },
            icon: const Icon(Icons.visibility),
            label: const Text("Tampilkan Nama"),
          ),
        ],
      ),
    );
  }
}