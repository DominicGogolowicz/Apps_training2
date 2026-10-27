import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStaticGrid extends StatelessWidget {
  const MyStaticGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing:1,
      mainAxisSpacing:1,
      mainAxisExtent: 298,
      padding: const EdgeInsets.all(1),
      children: <Widget>[
        Container(
          color: Colors.blue,
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Score L1'),
              SizedBox(height: 30),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Icon(Icons.exposure_minus_1)),
                    SizedBox(width: 10),
                    ElevatedButton(onPressed: () {}, child: const Icon(Icons.exposure_plus_1)),

                  ]
              )
            ],
          )),
        ),
        Container(
          color: Colors.lightBlueAccent,
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Score L2'),
              SizedBox(height: 30),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Icon(Icons.exposure_minus_1)),
                    SizedBox(width: 10),
                    ElevatedButton(onPressed: () {}, child: const Icon(Icons.exposure_plus_1)),

                  ]
              )
            ],
          )),
        ),
        Container(
          color: Colors.deepPurpleAccent,
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Algae Processed'),
              SizedBox(height: 30),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Icon(Icons.exposure_minus_1)),
                    SizedBox(width: 10),
                    ElevatedButton(onPressed: () {}, child: const Icon(Icons.exposure_plus_1)),

                  ]
              )
            ],
          )),
        ),
        Container(
          color: Colors.lightBlueAccent,
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Score L3'),
              SizedBox(height: 30),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Icon(Icons.exposure_minus_1)),
                    SizedBox(width: 10),
                    ElevatedButton(onPressed: () {}, child: const Icon(Icons.exposure_plus_1)),

                  ]
              )
            ],
          )),
        ),
        Container(
          color: Colors.blueAccent,
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Score L4'),
              SizedBox(height: 30),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Icon(Icons.exposure_minus_1)),
                    SizedBox(width: 10),
                    ElevatedButton(onPressed: () {}, child: const Icon(Icons.exposure_plus_1)),

                  ]
              )
            ],
          )),
        ),

        Container(
          color: Colors.purpleAccent,
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Net Score'),
              SizedBox(height: 30),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Icon(Icons.exposure_minus_1)),
                    SizedBox(width: 10),
                    ElevatedButton(onPressed: () {}, child: const Icon(Icons.exposure_plus_1)),

                  ]
              )
            ],
          )),
        ),
      ],
    );
  }
}