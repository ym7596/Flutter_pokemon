import 'package:flutter/material.dart';

class CalculateStat extends StatefulWidget {
  const CalculateStat({Key? key}) : super(key: key);

  @override
  State<CalculateStat> createState() => _CalculateStatState();
}

class _CalculateStatState extends State<CalculateStat> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("데미지 계산기"),
      ),
      body: Container(),
    );
  }
}
