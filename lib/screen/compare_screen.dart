import 'package:flutter/material.dart';

class CompareScreen extends StatefulWidget {
  const CompareScreen({Key? key}) : super(key: key);

  @override
  State<CompareScreen> createState() => _CompareScreenState();
}

class _CompareScreenState extends State<CompareScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('비교하기'),

      ),
      body:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                  labelText : 'Input'
              ),
            ),
          ),
        )

    );
  }
}
