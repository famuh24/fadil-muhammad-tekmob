import 'package:flutter/material.dart';

class MyStatefulPage extends StatefulWidget {
  const MyStatefulPage({super.key});

  @override
  State<MyStatefulPage> createState() => _MyStatefulPageState();
}

class _MyStatefulPageState extends State<MyStatefulPage> {
  int _counter = 0;

  void _increment() {
    setState(() => _counter++);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDF2FF),
      appBar: AppBar(
        title: const Text("tap sebanyak mungkin"),
        backgroundColor: Colors.indigo[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "anjay sebanyak ini",
              style: TextStyle(letterSpacing: 2, fontWeight: FontWeight.w300, fontSize: 16),
            ),
            const SizedBox(height: 10),
            // Lingkaran Angka
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(color: Colors.indigo.withOpacity(0.2), blurRadius: 20, spreadRadius: 5)
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                "$_counter",
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.indigo[800]),
              ),
            ),
            const SizedBox(height: 40),
            // Tombol Modern
            ElevatedButton.icon(
              onPressed: _increment,
              icon: const Icon(Icons.add_circle_outline),
              label: const Text("tap dsni ey", style: TextStyle(fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo[800],
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}