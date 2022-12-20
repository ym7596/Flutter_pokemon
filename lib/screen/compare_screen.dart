import 'package:flutter/material.dart';

class CompareScreen extends StatefulWidget {
  static const String comparePageRouteName = "/compare";
  final List items;
  const CompareScreen({Key? key, required this.items}) : super(key: key);

  @override
  State<CompareScreen> createState() => _CompareScreenState();
}

class _CompareScreenState extends State<CompareScreen> {
  final hpController = TextEditingController();
  final BController = TextEditingController();
  final DController = TextEditingController();
  final SController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('내구력/스피드 실능'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowBox(myController: hpController, name: "체력"),
              RowBox(myController: BController, name: "방어"),
              RowBox(myController: DController, name: "특방"),
              RowBox(myController: SController, name: "스피드"),
            ],
          ),
        ));
  }
}

class RowBox extends StatelessWidget {
  final TextEditingController? myController;
  final String? name;
  const RowBox({Key? key, required this.myController, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         SizedBox(
          width: 100.0,
          child: Text(
            name!,
            style: TextStyle(
                fontSize: 20.0, height: 2.0, color: Colors.black),
          ),
        ),
        SizedBox(
          width: 100.0,
          child: TextField(
            style: TextStyle(
                fontSize: 20.0, height: 2.0, color: Colors.black),
            controller: myController,
          ),
        )
      ],
    );
  }
}

