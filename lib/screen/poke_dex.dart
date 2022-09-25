import 'package:flutter/material.dart';

class PokeDex extends StatelessWidget {
  const PokeDex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Poke Dex'),
      ),
    );
  }
}
