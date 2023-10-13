import 'package:flutter/material.dart';
import 'package:music_app_sangeet/SongDetails/components/song_list_builder.dart';
import 'package:music_app_sangeet/SongDetails/components/methods.dart';
import 'package:music_app_sangeet/home/models/song_detail.dart';

class SongTab extends StatefulWidget {
  final List<Attribute> attrib;

  final List<String> authors;
  final AnimationController controller;
  final Color textColor;
  const SongTab({
    super.key,
    required this.authors,
    required this.textColor,
    required this.controller,
    required this.attrib,
  });

  @override
  State<SongTab> createState() => _SongTabState();
}

class _SongTabState extends State<SongTab> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          indicatorColor: const Color(0xff45C37B),
          unselectedLabelColor: Colors.grey.withOpacity(0.75),
          labelColor: widget.textColor,
          labelStyle: const TextStyle(fontWeight: FontWeight.w500),
          controller: _tabController,
          tabs: [
            Tab(
              text: widget.attrib[0].title,
            ),
            Tab(
              text: widget.attrib[1].title,
            ),
            Tab(
              text: widget.attrib[2].title,
            ),
            Tab(
              text: widget.attrib[3].title,
            ),
            Tab(
              text: widget.attrib[4].title,
            ),
          ],
        ),
        Flexible(
          child: TabBarView(
            controller: _tabController,
            children: [
              Authors(
                  authors: widget.authors,
                  textColor: widget.textColor,
                  animationController: widget.controller),
              // Can create other pages as well and put them here.
              const Methods(),
              Authors(
                  authors: widget.authors,
                  textColor: widget.textColor,
                  animationController: widget.controller),
              Authors(
                  authors: widget.authors,
                  textColor: widget.textColor,
                  animationController: widget.controller),
              Authors(
                  authors: widget.authors,
                  textColor: widget.textColor,
                  animationController: widget.controller),
            ],
          ),
        ),
      ],
    );

    // Can use this animation transition as well for TabBarView .

    //.animate(controller: widget.controller)
    //.slideY(begin: 1, end: 0, curve: Curves.easeIn);
  }
}
