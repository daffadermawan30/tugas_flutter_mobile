import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: LayoutRulesExample()));
}

class LayoutRulesExample extends StatelessWidget {
  const LayoutRulesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aturan Layout Flutter")),
      body: MyPages1(),
    );
  }
}

class MyPages1 extends StatelessWidget {
  const MyPages1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '1 & 2. Memahami Constraints (Batasan) dan Size (Ukuran)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Widget induk di sini hanya mengizinkan anaknya memiliki lebar antara 120 sampai 220 dan tinggi antara 120 sampai 220. Walaupun kita coba paksa anaknya tampil dengan lebar 480 dan tinggi 60, hasil akhirnya tetap dibatasi sesuai aturan induk, sehingga ukurannya terpotong menjadi maksimal 220 untuk lebar dan 120 untuk tinggi.',
            ),
            const SizedBox(height: 10),
            ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 120,
                maxWidth: 220,
                minHeight: 120,
                maxHeight: 220,
              ),
              child: Container(
                width: 480,
                height: 60,
                color: Colors.teal,
                child: const Text(
                  'Lebar 480 dan tinggi 60 yang saya minta tidak dikabulkan, malah dibulatkan jadi 220x120',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
