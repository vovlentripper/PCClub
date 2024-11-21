import 'package:computer_club_vladimir/models/games_and_video.dart';
import 'package:computer_club_vladimir/widgets/game_info_sample_pc.dart';
import 'package:computer_club_vladimir/widgets/game_info_sample_ps.dart';
import 'package:computer_club_vladimir/widgets/youtube_video_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Главная",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.blue,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(color: Colors.blue),
                child: YoutubeVideoWidget(videoID: "lGLJUxw6YiI"),
              ),
            ),
            Expanded(
              flex: 1,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                        child: Text("Игры на компьютер, в клубе:")
                    ),
                    Expanded(
                      flex: 1,
                        child: Text("Игры на консоль, в клубе:")
                    )
                  ],
                )
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                      itemCount: gamesPCList.length,
                      itemBuilder: (context, int index) {
                        return GameInfoSamplePC(index: index);
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                      itemCount: gamesPSList.length,
                      itemBuilder: (context, int index) {
                        return GameInfoSamplePS(index: index);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}