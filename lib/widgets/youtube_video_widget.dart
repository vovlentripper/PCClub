import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';



class YoutubeVideoWidget extends StatefulWidget {
  final String videoID;
  const YoutubeVideoWidget({super.key, required this.videoID});

  @override
  State<YoutubeVideoWidget> createState() => _YoutubeVideoWidgetState();
}

class _YoutubeVideoWidgetState extends State<YoutubeVideoWidget> {
  late YoutubePlayerController _controller;
  @override
  void initState()
  {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoID,
      flags: YoutubePlayerFlags(
        autoPlay: true,
            mute: false
      )
    );
  }
  @override
  void dispose()
  {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
        controller: _controller,
            showVideoProgressIndicator: true,
      progressIndicatorColor: Colors.red,
    );
  }
}
