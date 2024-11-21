import 'package:computer_club_vladimir/models/games_and_video.dart';
import 'package:flutter/material.dart';

class GameInfoSamplePS extends StatefulWidget {
   int index;
   GameInfoSamplePS({super.key, required this.index});

  @override
  State<GameInfoSamplePS> createState() => _GameInfoSamplePSState();
}

class _GameInfoSamplePSState extends State<GameInfoSamplePS> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
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
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Image.network("${gamesPSList[widget.index].photo}",
                  fit: BoxFit.scaleDown,
                ),
              )
          ),
          Expanded(
              flex: 1,
              child: Text("${gamesPSList[widget.index].name}")
          ),
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text("${gamesPSList[widget.index].description}"),
              )
          )
        ],
      ),
    )
    );
  }
}