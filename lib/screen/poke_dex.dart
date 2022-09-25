import 'package:ddurpoke/dataclass/pokedata_class.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class PokeDex extends StatefulWidget {
  const PokeDex({Key? key}) : super(key: key);

  @override
  State<PokeDex> createState() => _PokeDexState();
}

class _PokeDexState extends State<PokeDex> {

  List? _items = [];
   //final pokeDataList = new PokeDataList();
  List<PokeData> pokeList =[];
  Future<void> readJson() async {
    final String response = await DefaultAssetBundle.of(context).loadString("asset/pokedexsample.json");
    final data = await json.decode(response);
    setState(() {
      _items = data;
      for(int i = 0;i< response.length;i++){
       // pokeList.add(PokeData());
       // pokeList[i].Num= data[i]["Num"];
       // pokeList[i].Name_en = data[i]["Name"];
        //print(pokeList[i].Name_en);
      }
      print(_items![0]["Name"]);
    });
  }

  @override
  void initState(){
    super.initState();
    readJson();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("포켓몬 도감"),
      ),
      body: Scrollbar(
        thickness: 8.0,
        radius: Radius.circular(8.0),

        child: GridView.builder(
          itemCount: _items!.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 8.0/10.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
        itemBuilder: (BuildContext context, int index){
            return Container(
              child: Column(

                children: [
                  InkWell(
                    onTap: (){
                      print(_items!.elementAt(index)["Name_ko"]);
                    },
                    child:
                    Image.network(
                      _items!.elementAt(index)["URL"].toString(),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(_items!.elementAt(index)["Name_ko"],
                      style: TextStyle(fontSize: 13),
                      ),
                    ),
                  )
                ],
              ),
            );
        },

        ),
      ),
    );
  }
}
