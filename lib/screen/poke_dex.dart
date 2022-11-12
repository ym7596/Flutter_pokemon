import 'package:ddurpoke/dataclass/pokedata_class.dart';
import 'package:ddurpoke/screen/poke_card.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class PokeDex extends StatefulWidget {
  static const String secondPageRouteName= "/dex";
  final List items;
  const PokeDex( {Key? key, required this.items}) : super(key: key);

  @override
  State<PokeDex> createState() => _PokeDexState();
}

class _PokeDexState extends State<PokeDex> {

  FocusNode _focusNode = FocusNode();

 // List nametest = widget.items.elementAt(index)
  @override
  Widget build(BuildContext context) {
    final List itemsname = widget.items;
    return Scaffold(
      appBar: AppBar(
        title: Text("포켓몬 도감"),
        actions: <Widget>[
        IconButton(onPressed: (){
          showSearch(context: context, delegate: CustomSearchDelegate(widget.items));
        },

            icon: Icon(Icons.search))
        ],
      ),
      body: Scrollbar(
        thickness: 8.0,
        radius: Radius.circular(8.0),

        child: GridView.builder(
          itemCount: widget.items.length,
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
                      PokeData data = new PokeData();
                      data.Name_ko = widget.items.elementAt(index)["Name_ko"];
                      data.hp = widget.items.elementAt(index)["H"];
                      data.Attack = widget.items.elementAt(index)["A"];
                      data.Defence = widget.items.elementAt(index)["B"];
                      data.sAttack = widget.items.elementAt(index)["C"];
                      data.sDefence= widget.items.elementAt(index)["D"];
                      data.speed = widget.items.elementAt(index)["S"];
                      data.imgURL = widget.items.elementAt(index)["URL"];
                      data.Type1 = widget.items.elementAt(index)["Type1"];
                      data.Type2 = widget.items.elementAt(index)["Type2"];
                      data.Total = widget.items.elementAt(index)["Total"];
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PokeCard(items : data))
                      );
                      print( widget.items.elementAt(index)["Name_ko"]);
                    },
                    child:
                    Image.network(
                      widget.items.elementAt(index)["URL"].toString(),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(widget.items.elementAt(index)["Name_ko"],
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

class CustomSearchDelegate extends SearchDelegate{


   final List itemsname;
  CustomSearchDelegate(this.itemsname);
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(onPressed: (){},
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      onPressed: (){
        close(context,null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    List<String> matchQuery = [];

    //widget.items.elementAt(index)["Name_ko"]
    for(var i = 0;i< itemsname.length;i++){

      if(itemsname.elementAt(i)["Name"].toString().contains(query.toString())){
        matchQuery.add(itemsname.elementAt(i)["Name"].toString());
        // print(itemsname[i]..toString());
      }
      }
        return ListView.builder(
          itemCount: matchQuery.length,
          itemBuilder: (context,index){
            var result = matchQuery[index];
            return ListTile(
              title: Text(result),
            );
          },
        );

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List<String> matchQuery = [];

    //widget.items.elementAt(index)["Name_ko"]
    for(var i = 0;i< itemsname.length;i++){

      if(itemsname.elementAt(i)["Name"].toString().contains(query.toString())){
        matchQuery.add(itemsname.elementAt(i)["Name"].toString());
       // print(itemsname[i]..toString());
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context,index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );

  }

}
