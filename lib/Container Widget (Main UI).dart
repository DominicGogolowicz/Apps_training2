import 'package:flutter/material.dart';

class GridUIBox extends StatelessWidget {
  final Color boxColor;
  final String boxText;

  const GridUIBox({super.key, required this.boxColor, required this.boxText});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: boxColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(boxText),
          const SizedBox(height: 90),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.exposure_minus_1),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.exposure_plus_1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyStaticGrid extends StatelessWidget {
  const MyStaticGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
      mainAxisExtent: 298,
      padding: const EdgeInsets.all(1),
      children: <Widget>[
        const GridUIBox(boxColor: Colors.blue, boxText: 'Score L1'),
        const GridUIBox(boxColor: Colors.lightBlueAccent, boxText: 'Score L2'),
        const GridUIBox(
          boxColor: Colors.deepPurpleAccent,
          boxText: 'Algae Processed',
        ),
        const GridUIBox(boxColor: Colors.lightBlueAccent, boxText: 'Score L3'),
        const GridUIBox(boxColor: Colors.blueAccent, boxText: 'Score L4'),
        const GridUIBox(boxColor: Colors.purpleAccent, boxText: 'Net score'),
      ],
    );
  }
}
