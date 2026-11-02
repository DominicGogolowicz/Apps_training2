import 'package:flutter/material.dart';
import 'scouting_screen.dart';
class TeamCard extends StatelessWidget {
  final String teamName;
  final String eventName;
  final int totalScore;
  final Color boxColor;

  const TeamCard({
    super.key,
    required this.teamName,
    required this.eventName,
    required this.boxColor,
    required this.totalScore
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
          Text(teamName, style: const TextStyle(fontSize: 30)),
          Text(eventName, style: const TextStyle(fontSize: 30)),
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String teamNameString1 = 'bear';
  final String eventNameString1 = 'lake';
  final int totalScore1 = (scoreL1 + scoreL2 + scoreL3 + scoreL4 + algeProcesed + netScore);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        padding: const EdgeInsets.all(1),
        children: <Widget>[
          TeamCard(
            boxColor: Colors.white,
            teamName: teamNameString1,
            eventName: eventNameString1,
            totalScore: totalScore1,
          ),
        ],
      ),
    );
  }
}
