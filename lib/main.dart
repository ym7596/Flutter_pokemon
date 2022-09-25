import 'package:ddurpoke/screen/compare_screen.dart';
import 'package:ddurpoke/screen/home_screen.dart';
import 'package:ddurpoke/screen/poke_dex.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/dex': (context) => PokeDex(),
        '/compare':(context) => CompareScreen(),
      },
    );
  }
}
