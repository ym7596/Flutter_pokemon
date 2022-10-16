import 'package:ddurpoke/dataclass/pokedata_class.dart';
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
