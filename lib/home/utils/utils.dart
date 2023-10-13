import 'package:flutter/material.dart';
import 'package:music_app_sangeet/SongDetails/details.dart';
import 'package:music_app_sangeet/home/models/song_detail.dart';

navigateToDetail(SongDetail song, BuildContext context) {
  Navigator.push(
    context,
    PageRouteBuilder<void>(
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return AnimatedBuilder(
            animation: animation,
            builder: (BuildContext context, Widget? child) {
              return Opacity(
                opacity: animation.value,
                child: SongInfo(
                  detail: song,
                ),
              );
            });
      },
      transitionDuration: const Duration(milliseconds: 800),
      reverseTransitionDuration: const Duration(milliseconds: 500),
    ),
  );
}
