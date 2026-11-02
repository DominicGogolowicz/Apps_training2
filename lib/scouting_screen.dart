import 'package:flutter/material.dart';

class GridUIBox extends StatelessWidget {
  final Color boxColor;
  final String boxText;
  final int score;
  final VoidCallback onSubtract;
  final VoidCallback onAdd;
  final VoidCallback onClear;

  const GridUIBox({
    super.key,
    required this.boxColor,
    required this.boxText,
    required this.score,
    required this.onSubtract,
    required this.onAdd,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: boxColor,
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(boxText, style: TextStyle(fontSize: 15)),
          const SizedBox(height: 30),
          Text(
            '$score',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 80,
                  child: ElevatedButton(
                    onPressed: onSubtract,
                    child: const Icon(Icons.exposure_minus_1, size: 40),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: SizedBox(
                  height: 80,
                  child: ElevatedButton(
                    onPressed: onAdd,
                    child: const Icon(Icons.exposure_plus_1, size: 40),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onClear,
              child: const Icon(Icons.clear, size: 28),
            ),
          ),
        ],
      ),
    );
  }
}

class MyStaticGrid extends StatefulWidget {
  final Function(int)? onScoreChanged;

  const MyStaticGrid({super.key, this.onScoreChanged});

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

  int get totalScore =>
      scoreL1 + scoreL2 + scoreL3 + scoreL4 + algaeProcessed + netScore;

  void _updateScore(VoidCallback action) {
    setState(() {
      action();
      widget.onScoreChanged?.call(totalScore);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
      padding: const EdgeInsets.all(1),
      children: <Widget>[
        GridUIBox(
          boxColor: Colors.blue,
          boxText: 'Score L1',
          score: scoreL1,
          onSubtract: () => _updateScore(() {
            if (scoreL1 > 0) scoreL1--;
          }),
          onAdd: () => _updateScore(() {
            if (scoreL1 < 12) scoreL1++;
          }),
          onClear: () => _updateScore(() {
            scoreL1 = 0;
          }),
        ),
        GridUIBox(
          boxColor: Colors.lightBlueAccent,
          boxText: 'Score L2',
          score: scoreL2,
          onSubtract: () => _updateScore(() {
            if (scoreL2 > 0) scoreL2--;
          }),
          onAdd: () => _updateScore(() {
            if (scoreL2 < 12) scoreL2++;
          }),
          onClear: () => _updateScore(() {
            scoreL2 = 0;
          }),
        ),
        GridUIBox(
          boxColor: Colors.deepPurpleAccent,
          boxText: 'Algae Processed',
          score: algaeProcessed,
          onSubtract: () => _updateScore(() {
            if (algaeProcessed > 0) algaeProcessed--;
          }),
          onAdd: () => _updateScore(() {
            if (algaeProcessed < 12) algaeProcessed++;
          }),
          onClear: () => _updateScore(() {
            algaeProcessed = 0;
          }),
        ),
        GridUIBox(
          boxColor: Colors.lightBlueAccent,
          boxText: 'Score L3',
          score: scoreL3,
          onSubtract: () => _updateScore(() {
            if (scoreL3 > 0) scoreL3--;
          }),
          onAdd: () => _updateScore(() {
            if (scoreL3 < 12) scoreL3++;
          }),
          onClear: () => _updateScore(() {
            scoreL3 = 0;
          }),
        ),
        GridUIBox(
          boxColor: Colors.blueAccent,
          boxText: 'Score L4',
          score: scoreL4,
          onSubtract: () => _updateScore(() {
            if (scoreL4 > 0) scoreL4--;
          }),
          onAdd: () => _updateScore(() {
            if (scoreL4 < 12) scoreL4++;
          }),
          onClear: () => _updateScore(() {
            scoreL4 = 0;
          }),
        ),
        GridUIBox(
          boxColor: Colors.purpleAccent,
          boxText: 'Net score',
          score: netScore,
          onSubtract: () => _updateScore(() {
            if (netScore > 0) netScore--;
          }),
          onAdd: () => _updateScore(() {
            if (netScore < 12) netScore++;
          }),
          onClear: () => _updateScore(() {
            netScore = 0;
          }),
        ),
      ],
    );
  }
}
