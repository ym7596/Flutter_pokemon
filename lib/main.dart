import 'package:ddurpoke/screen/compare_screen.dart';
import 'package:ddurpoke/screen/home_screen.dart';
import 'package:ddurpoke/screen/poke_dex.dart';
import 'package:flutter/material.dart';
import 'package:ddurpoke/dataclass/pokedata_class.dart';
import 'dart:convert';
void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List items = [];
  List<PokeData> pokeList = [];

  Future<void> readJson() async {
    final String response = await DefaultAssetBundle.of(context).loadString("asset/DexNew.json");
    final data = await json.decode(response);
    setState(() {
      items = data;

    });
  }
  @override
  void initState(){
    super.initState();
    readJson();
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      initialRoute: '/',
      routes: {
        HomeScreen.homePageRouteName: (context) => HomeScreen(items : items),
        //'/': (context) => HomeScreen(),
        PokeDex.secondPageRouteName: (context) => PokeDex(items : items),
        //'/dex': (context) => PokeDex(),
        '/compare':(context) => CompareScreen(),
      },
    );
  }
}
