import 'package:flutter/material.dart';

class CompareScreen extends StatefulWidget {
  static const String comparePageRouteName = "/compare";
  final List items;
  const CompareScreen({Key? key, required this.items}) : super(key: key);

  @override
  State<CompareScreen> createState() => _CompareScreenState();
}

class _CompareScreenState extends State<CompareScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('내구력/스피드 실능'),

      ),
      body:
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    labelText : 'Input'
                ),
              ),
            ),
          ),
        )

    );
  }
}
