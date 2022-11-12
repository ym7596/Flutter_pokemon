import 'package:ddurpoke/dataclass/pokedata_class.dart';
import 'package:ddurpoke/screen/poke_dex.dart';
import 'package:flutter/material.dart';

class PokeCard extends StatelessWidget {
  final PokeData items;
  const PokeCard({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(items.Name_ko),),
      body: Column(
        children: [
          Image.network(

              items.imgURL.toString()
          ),
          Myboxtext("타입 1", "타입 2"),
          SizedBox(),
          makeStatName("HP","A","B","C","D","S"),
          SizedBox(),
          makeStatName(
              items.hp.toString(),
              items.Attack.toString(),
              items.Defence.toString(),
              items.sAttack.toString(),
              items.sDefence.toString(),
              items.speed.toString()),
          SizedBox(),
          Row(
            children: [
              makeText(items.Type1.toString(), Colors.grey),
              makeText(items.Type2.toString(), Colors.grey)
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          )

        ]

      ),
    );
  }
  Widget makeText(String title,Color rcolor ,{double? width, double? height}) {
    return Container(
      child: Center(child: Text(title, style: TextStyle(fontSize: 23.0),),),
      width: width,
      height: height,
      decoration: BoxDecoration(color: rcolor),
      margin: EdgeInsets.all(10.0),
    );
  }

  Widget makeStatName(String H,String A,String B,String C,String D,String S){
    return Row(
      children: <Widget>[
        Flexible(
          fit: FlexFit.loose,
          child:
          makeText(H,Colors.red, width: 50, height: 50),
        ),
        Flexible(
          fit: FlexFit.loose,
          child:
          makeText(A,Colors.blue, width: 50, height: 50),
        ),
        Flexible(
          fit: FlexFit.loose,
          child:
          makeText(B,Colors.green, width: 50, height: 50),
        ),
        Flexible(
          fit: FlexFit.loose,
          child:
          makeText(C, Colors.orange,width: 50, height: 50),
        ),
        Flexible(
          fit: FlexFit.loose,
          child:
          makeText(D,Colors.brown, width: 50, height: 50),
        ),
        Flexible(
          fit: FlexFit.loose,
          child:
          makeText(S, Colors.cyanAccent,width: 50, height: 50),
        ),

      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    );

  }

  Widget Myboxtext(String value1,String value2){
   return Row(
     children: [
       Container(
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent)
          ),
          child: Text(value1),
        ),
       Container(
         margin: const EdgeInsets.all(15.0),
         padding: const EdgeInsets.all(3.0),
         decoration: BoxDecoration(
             border: Border.all(color: Colors.blueAccent)
         ),
         child: Text(value2),
       ),
     ],
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
   );
  }
}


