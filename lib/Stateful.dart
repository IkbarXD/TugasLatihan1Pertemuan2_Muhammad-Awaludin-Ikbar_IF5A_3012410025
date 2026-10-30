
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanCounter(),
    );
  }
}

class HalamanCounter extends StatefulWidget {
  const HalamanCounter({super.key});

  @override
  State<HalamanCounter> createState() => _HalamanCounterState();
}

class _HalamanCounterState extends State<HalamanCounter> {
  int _hitung = 0;

  // Menambah nilai counter
  void _tambah() {
    setState(() {
      _hitung++;
    });
  }

  // Mengurangi nilai counter
  void _kurang() {
    setState(() {
      _hitung--;
    });
  }

  // Mengatur ulang counter
  void _reset() {
    setState(() {
      _hitung = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Stateful'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Nilai Counter',
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 12),

            Text(
              '$_hitung',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _kurang,
                  child: const Icon(Icons.remove),
                ),

                const SizedBox(width: 12),

                ElevatedButton(
                  onPressed: _tambah,
                  child: const Icon(Icons.add),
                ),

                const SizedBox(width: 12),

                ElevatedButton(
                  onPressed: _reset,
                  child: const Icon(Icons.refresh),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
