import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Controller untuk input nama
  TextEditingController inputNama = TextEditingController();

  @override
  void dispose() {
    // Menghapus controller ketika halaman ditutup
    inputNama.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar halaman Home
      appBar: AppBar(
        title: const Text(
          "Nama App Kalian",
        ),

        backgroundColor: const Color.fromARGB(
          255,
          50,
          145,
          145,
        ),
      ),

      // Background halaman Home
      backgroundColor: const Color.fromARGB(
        245,
        124,
        86,
        196,
      ),

      body: Column(
        children: [
          // Jarak bagian atas
          const SizedBox(height: 30),

          // Input nama
          Center(
            child: SizedBox(
              width: 300,

              child: TextFormField(
                // Controller input nama
                controller: inputNama,

                // Dekorasi input
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(
                    255,
                    175,
                    101,
                    197,
                  ),

                  filled: true,

                  hintText: 'Masukan Nama Kamu',

                  // Icon nama
                  prefixIcon: Icon(
                    Icons.person,
                  ),

                  // Bentuk kotak input
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Jarak antara input dan tombol
          const SizedBox(height: 20),

          // Tombol Tampilkan Nama
          ElevatedButton.icon(
            onPressed: () {
              // Menampilkan nama di console
              print(inputNama.text);

              // Menampilkan pesan di aplikasi
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "Halo ${inputNama.text}!",
                  ),
                ),
              );
            },

            // Icon tombol
            icon: const Icon(
              Icons.visibility,
            ),

            // Tulisan tombol
            label: const Text(
              "Tampilkan Nama",
            ),
          ),

          // Jarak sebelum tombol Logout
          const SizedBox(height: 20),

          // Tombol Logout
          ElevatedButton.icon(
            onPressed: () {
              // Kembali ke Login
              // Semua halaman sebelumnya dihapus
              // sehingga tidak bisa kembali ke Home
              Navigator.pushNamedAndRemoveUntil(
                context,
                "/",
                (route) => false,
              );
            },

            // Icon logout
            icon: const Icon(
              Icons.logout,
            ),

            // Tulisan tombol
            label: const Text(
              "Logout",
            ),
          ),
        ],
      ),
    );
  }
}