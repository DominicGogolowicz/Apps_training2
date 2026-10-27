import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Container Widget (Main UI).dart';

void main() {
  runApp(ProviderScope(child: MaterialApp(home: Scaffold(
    body: MyStaticGrid()
  ))));
}

