import 'dart:math';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _warnaAwalIndex = 0;
  List<Color> _warnaTersedia = [Colors.blue, Colors.yellow, Colors.green];

  void _gantiWarna() {
    setState(() {
      _warnaAwalIndex = (_warnaAwalIndex + 1) % _warnaTersedia.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color _warnaAwal = _warnaTersedia[_warnaAwalIndex];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Latihan Flutter"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            color: _warnaAwal,
          ),
          SizedBox(
            height: 250,
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
