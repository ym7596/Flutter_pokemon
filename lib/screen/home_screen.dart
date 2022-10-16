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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           _RouteButton('/dex', '도감보기'),
            _RouteButton('/compare', '비교하기'),
          ],
        ),
      ),
    );

  }
  Widget _RouteButton(String where, String txt){

    return ElevatedButton(onPressed: (){
      Navigator.pushNamed(context, where);
    }, child: Text(txt));
  }

}
