import 'package:flutter/material.dart';

class GridUIBox extends StatelessWidget {
  final Color boxColor;
  final String boxText;
  final int score;
  final VoidCallback onSubtract;
  final VoidCallback onAdd;

  const GridUIBox({
    super.key,
    required this.boxColor,
    required this.boxText,
    required this.score,
    required this.onSubtract,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: boxColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(boxText),
          const SizedBox(height: 30),
          Text('$score', style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: onSubtract,
                child: const Icon(Icons.exposure_minus_1),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: onAdd,
                child: const Icon(Icons.exposure_plus_1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyStaticGrid extends StatefulWidget {
  const MyStaticGrid({super.key});

  @override
  State<MyStaticGrid> createState() => _MyStaticGridState();
}

class _MyStaticGridState extends State<MyStaticGrid> {
  int scoreL1 = 0;
  int scoreL2 = 0;
  int algaeProcessed = 0;
  int scoreL3 = 0;
  int scoreL4 = 0;
  int netScore = 0;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
      mainAxisExtent: 298,
      padding: const EdgeInsets.all(1),
      children: <Widget>[
        GridUIBox(
          boxColor: Colors.blue,
          boxText: 'Score L1',
          score: scoreL1,
          onSubtract: () {
            setState(() {
              scoreL1 = scoreL1 - 1;
            });
          },
          onAdd: () {
            setState(() {
              scoreL1 = scoreL1 + 1;
            });
          },
        ),
        GridUIBox(
          boxColor: Colors.lightBlueAccent,
          boxText: 'Score L2',
          score: scoreL2,
          onSubtract: () {
            setState(() {
              scoreL2 = scoreL2 - 1;
            });
          },
          onAdd: () {
            setState(() {
              scoreL2 = scoreL2 + 1;
            });
          },
        ),
        GridUIBox(
          boxColor: Colors.deepPurpleAccent,
          boxText: 'Algae Processed',
          score: algaeProcessed,
          onSubtract: () {
            setState(() {
              algaeProcessed = algaeProcessed - 1;
            });
          },
          onAdd: () {
            setState(() {
              algaeProcessed = algaeProcessed + 1;
            });
          },
        ),
        GridUIBox(
          boxColor: Colors.lightBlueAccent,
          boxText: 'Score L3',
          score: scoreL3,
          onSubtract: () {
            setState(() {
              scoreL3 = scoreL3 - 1;
            });
          },
          onAdd: () {
            setState(() {
              scoreL3 = scoreL3 + 1;
            });
          },
        ),
        GridUIBox(
          boxColor: Colors.blueAccent,
          boxText: 'Score L4',
          score: scoreL4,
          onSubtract: () {
            setState(() {
              scoreL4 = scoreL4 - 1;
            });
          },
          onAdd: () {
            setState(() {
              scoreL4 = scoreL4 + 1;
            });
          },
        ),
        GridUIBox(
          boxColor: Colors.purpleAccent,
          boxText: 'Net score',
          score: netScore,
          onSubtract: () {
            setState(() {
              netScore = netScore - 1;
            });
          },
          onAdd: () {
            setState(() {
              netScore = netScore + 1;
            });
          },
        ),
      ],
    );
  }
}
