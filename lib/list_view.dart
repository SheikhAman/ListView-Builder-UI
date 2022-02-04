import 'package:flutter/material.dart';

class ListViewUI extends StatelessWidget {
  ListViewUI({Key? key}) : super(key: key);
  final List<Color> color = [
    Colors.red,
    Colors.orange,
    Colors.teal,
    Colors.green,
    Colors.indigo,
    Colors.blueGrey,
    Colors.lightBlue,
    Colors.limeAccent,
    Colors.pinkAccent,
    Colors.cyan,
  ];
  final List friend = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView',
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView.builder(
          itemCount: color.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(8),
              alignment: Alignment.center,
              height: 100,
              width: 20,
              color: color[index],
              child: Text(
                friend[index],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            );
          }),
    );
  }
}
