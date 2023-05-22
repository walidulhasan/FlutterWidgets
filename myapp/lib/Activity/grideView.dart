import 'package:flutter/material.dart';

import '../widget/input_modal.dart';

// ignore: must_be_immutable
class GrideView extends StatelessWidget {
  var myItems = [
    {"img": "https://loremflickr.com/320/240", "title": "A"},
    {"img": "https://loremflickr.com/320/240", "title": "B"},
    {"img": "https://loremflickr.com/320/240", "title": "C"},
    {"img": "https://loremflickr.com/320/240", "title": "D"},
    {"img": "https://loremflickr.com/320/240", "title": "E"},
    {"img": "https://loremflickr.com/320/240", "title": "F"},
    {"img": "https://loremflickr.com/320/240", "title": "G"},
    {"img": "https://loremflickr.com/320/240", "title": "H"},
    {"img": "https://loremflickr.com/320/240", "title": "I"},
    {"img": "https://loremflickr.com/320/240", "title": "J"},
    {"img": "https://loremflickr.com/320/240", "title": "K"},
    {"img": "https://loremflickr.com/320/240", "title": "L"},
    {"img": "https://loremflickr.com/320/240", "title": "M"},
    {"img": "https://loremflickr.com/320/240", "title": "N"},
    {"img": "https://loremflickr.com/320/240", "title": "O"},
    {"img": "https://loremflickr.com/320/240", "title": "P"}
  ];
  GrideView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gride View'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.4),
          itemCount: myItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                mySnacksAction(myItems[index]['title']!, context);
              },
              child: Container(
                margin: const EdgeInsets.all(2),
                width: double.infinity,
                height: 200,
                child: Image.network(
                  myItems[index]['img']!,
                  fit: BoxFit.fill,
                ),
              ),
            );
          }),
    );
  }
}
