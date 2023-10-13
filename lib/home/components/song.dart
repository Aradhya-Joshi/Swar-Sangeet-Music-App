import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_app_sangeet/home/components/animate_text.dart';
import 'package:music_app_sangeet/home/models/song_detail.dart';
import 'package:music_app_sangeet/home/providers/transition_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class Song extends ConsumerStatefulWidget {
  final SongDetail songDetail;
  final PageController pageController;
  const Song(
      {super.key, required this.songDetail, required this.pageController});

  @override
  ConsumerState<Song> createState() => _SongState();
}

class _SongState extends ConsumerState<Song> with TickerProviderStateMixin {
  late AnimationController _controller;
  int? reverseIndex;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 500),
        lowerBound: 0,
        upperBound: 1);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    reverseIndex = ref.watch(textAnimationIndex);

    if (reverseIndex != null && reverseIndex == widget.pageController.page) {
      _controller.reverse().then((value) => _controller.forward());
    }

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: AnimateText(
                "DAILY MUSICALS",
                style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
                controller: _controller,
                autoPlay: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Hero(
                tag: widget.songDetail.title!,
                child: Material(
                  type: MaterialType.transparency,
                  child: AnimateText(
                    widget.songDetail.title!,
                    style: GoogleFonts.ibmPlexSerif().copyWith(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: widget.songDetail.textColor,
                    ),
                    controller: _controller,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ...widget.songDetail.attributes!.map(
              (data) => AnimatedTile(controller: _controller, data: data),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: AnimateText(
                    widget.songDetail.description!,
                    style: TextStyle(
                      fontSize: 12,
                      color: widget.songDetail.textColor,
                    ),
                    controller: _controller,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedTile extends StatelessWidget {
  final Attribute data;
  final bool animate;
  final AnimationController? controller;
  const AnimatedTile(
      {super.key, required this.data, this.controller, this.animate = true});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
        leading: Hero(tag: data.icon, child: data.icon),
        title: Hero(
          tag: data.title,
          child: Material(
            type: MaterialType.transparency,
            child: animate
                ? AnimateText(
                    data.title,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600),
                    controller: controller!,
                  )
                : Text(
                    data.title,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600),
                  ),
          ),
        ),
      ),
    );
  }
}
