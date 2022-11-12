import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String homePageRouteName= "/";
  final List items;
  const HomeScreen( {Key? key , required this.items}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('포켓몬박사 뚜르'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
           _RouteButton('/dex', '포켓몬 도감'),

            _RouteButton('/compare', '내구력/스피드 실능'),
          ],
        ),
      ),
    );

  }
  Widget _RouteButton(String where, String txt){
  final ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 30),
    minimumSize: Size(100,80)
  );
    return ElevatedButton(
        onPressed: (){
      Navigator.pushNamed(context, where);
    },
        child: Text(txt),
      style: style

    );
  }

}
