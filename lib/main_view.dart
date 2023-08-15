import 'dart:math';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //membuat variabel yang dibutuhkan dan membuat list color yang digunakan
  int _warnaAwalIndex = 0;
  final List<Color> _warnaTersedia = [Colors.blue, Colors.yellow, Colors.green];

  //metode untuk ganti warna
  void _gantiWarna() {
    setState(() {
      _warnaAwalIndex = (_warnaAwalIndex + 1) % _warnaTersedia.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    //menginisialisasikan untuk warna yang pertama kali muncul
    Color _warnaAwal = _warnaTersedia[_warnaAwalIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Latihan Flutter"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 200,
            height: 200,
            color: _warnaAwal,
          ),
          SizedBox(
            width: 150.0,
            height: 50.0,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                ),
                onPressed: _gantiWarna,
                child: const Text("Ganti Warna")),
          )
        ],
      )),
    );
  }
}
