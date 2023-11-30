import 'package:flutter/material.dart';
import 'card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: CardFood(),
      ),
    );
  }
}
