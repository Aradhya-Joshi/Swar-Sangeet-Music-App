import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_app_sangeet/SongDetails/components/fav_song.dart';

class SongList extends StatefulWidget {
  final String song;
  final int i;
  final Color txtcolor;
  const SongList({
    super.key,
    required this.song,
    required this.i,
    required this.txtcolor,
  });

  //final bool isFavorite; Can make use in this way to check and then decid if the song is already
  //favourite or not.

  @override
  State<SongList> createState() => _SongListState();
}

class _SongListState extends State<SongList> {
  final audioplayer = AudioPlayer();
  final favsong = FavSong();

  bool isFavorite = false;
  bool isPlaying = false;

  // final adu = AudioCache().clearAll();

  @override
  void initState() {
    super.initState();
    // adu;
    //audioplayer.setSourceAsset('${widget.song}.mp3');
    //AssetSource(
    // audioplayer.setSourceUrl('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
  }

  // void playSound(int sno) {
  //   final player = new AudioCache();
  //   player.play('note$sno.wav');
  // }

  @override
  void dispose() {
    super.dispose();
    audioplayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.song,
        style: TextStyle(color: widget.txtcolor),
      ),

      ///data/user/0/com.example.music_app/cache/Song%201.mp3:

      trailing: Row(mainAxisSize: MainAxisSize.min, children: [
        IconButton(
          onPressed: () async {
            setState(() {
              isPlaying = !isPlaying;
              // print(widget.song.replaceFirst(' ', '_'));
            });
            if (isPlaying) {
              await audioplayer.play(
                AssetSource('${widget.song.replaceFirst(' ', '_')}.mp3'),
                mode: PlayerMode.mediaPlayer,
              );
              // print('playing');
              // await audioplayer.setSourceUrl('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
            } else {
              await audioplayer.pause();
              // print('pause');
            }

            // setState(() {
            //   isPlaying = !isPlaying;
            // });
          },
          icon: isPlaying
              ? Icon(
                  Icons.pause,
                  color: widget.txtcolor,
                )
              : Icon(
                  Icons.play_arrow,
                  color: widget.txtcolor,
                ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
              isFavorite
                  ? favsong.addFavSong(widget.song)
                  : favsong.removeFavSong(widget.i);
            });
          },
          icon: isFavorite
              ? Icon(
                  Icons.favorite,
                  color: widget.txtcolor,
                )
              : Icon(
                  Icons.favorite_outline_rounded,
                  color: widget.txtcolor,
                ),
        ),
      ]),
    );
  }
}
