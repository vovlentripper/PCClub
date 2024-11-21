import 'package:computer_club_vladimir/models/games_and_video.dart';
import 'package:flutter/material.dart';

class GameInfoSamplePC extends StatefulWidget {
   int index;
   GameInfoSamplePC({super.key, required this.index});

  @override
  State<GameInfoSamplePC> createState() => _GameInfoSamplePCState();
}

class _GameInfoSamplePCState extends State<GameInfoSamplePC> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      width: 600,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.blue,

      ),
      child: Column(
        children: <Widget>[
           Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(left: 10, top: 10),
                child:  Image.network("${gamesPCList[widget.index].photo}",
                  fit: BoxFit.scaleDown,
                ),
              )
        ),
           Expanded(
            flex: 1,
              child: Text("${gamesPCList[widget.index].name}")
          ),
          Expanded(
            flex: 1,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("${gamesPCList[widget.index].description}"),
              )
          )
        ],
      ),
    )
    );
  }
}
