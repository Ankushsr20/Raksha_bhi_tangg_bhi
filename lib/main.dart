import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:test1_assets/test.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[100],
        appBar: AppBar(
          title: Text('Raksha Bhi Tanng Bhi :")'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                'videos/Desire_Rakshabandhan.mp4',
              ),
              looping: true,
            ),
            //Container(
            //  width: double.infinity,
            //height: 300,
            //child: Card(
            //color: Colors.blue,
            //child: Text("video here"),
            //elevation: 10,
            //),
            //),
            Container(
              width: 200,
              height: 200,
              child: Card(
                color: Colors.blue,
                //shape: Border(right: BorderSide(color: Colors.amber, width: 5)),
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(40.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      'MUSIC!',
                      style: TextStyle(color: Colors.black),
                    ),
                    Image.asset('images/music.jpg'),
                    RaisedButton(onPressed: () {
                      print('Click!');
                      var audio = AudioCache();
                      audio.play('HONK_1.mp3');
                    })
                  ],
                ),
                elevation: 7,
              ),
            ),
            Text('Let everyday add strenghth to your bonding!'),
            Text('Stay safe!'),
          ],
        ),
      ),
    );
  }
}
