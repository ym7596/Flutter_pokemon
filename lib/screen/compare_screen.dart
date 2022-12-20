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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 100.0,
                  child: Text("HP",
                    style:
                  TextStyle(fontSize: 20.0,height: 2.0,color: Colors.black),
                  ),
                ),
                 SizedBox(
                  width: 100.0,
                  child: TextField(
                    style: TextStyle(fontSize: 20.0, height: 2.0, color: Colors.black),
                  controller: hpController,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 100.0,
                  child: Text("방어",
                    style:
                    TextStyle(fontSize: 20.0,height: 2.0,color: Colors.black),
                  ),
                ),
                 SizedBox(
                  width: 100.0,
                  child: TextField(
                    style: TextStyle(fontSize: 20.0, height: 2.0, color: Colors.black),
                  controller: BController,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 100.0,
                  child: Text("특방",
                    style:
                    TextStyle(fontSize: 20.0,height: 2.0,color: Colors.black),
                  ),
                ),
                 SizedBox(
                  width: 100.0,
                  child: TextField(
                    style: TextStyle(fontSize: 20.0, height: 2.0, color: Colors.black),
                  controller: DController,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 100.0,
                  child: Text("스피드",
                    style:
                    TextStyle(fontSize: 20.0,height: 2.0,color: Colors.black),
                  ),
                ),
                 SizedBox(
                  width: 100.0,
                  child: TextField(
                    style: TextStyle(fontSize: 20.0, height: 2.0, color: Colors.black),
                  controller: SController,
                  ),
                )
              ],
            ),
          ],
        ),
      )




        );


  }
}
