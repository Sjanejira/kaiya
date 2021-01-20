import 'package:flutter/material.dart';
import 'package:kaiya/phar_first_page.dart';

void main() {
  runApp(Kaiya());
}

class Kaiya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: PharWelcome.id,
      routes: {PharWelcome.id: (context) => PharWelcome()},
    );
  }
}
