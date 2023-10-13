import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:music_app_sangeet/SongDetails/components/song_list.dart';

class Authors extends StatefulWidget {
  final List<String> authors;
  final AnimationController animationController;
  final Color textColor;
  const Authors(
      {super.key,
      required this.authors,
      required this.textColor,
      required this.animationController});

  @override
  State<Authors> createState() => _AuthorsState();
}

class _AuthorsState extends State<Authors> {
  var value = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      itemBuilder: (context, index) {
        return SongList(
          song: widget.authors[index],
          i: index,
          txtcolor: widget.textColor,
        ) //make object of a new song list class.
            .animate(
              controller: widget.animationController,
            )
            .then(delay: Duration(milliseconds: 300 + index * 50))
            .slideY(
                begin: 1.4,
                end: 0,
                duration: const Duration(
                  milliseconds: 300,
                ),
                curve: Curves.easeOutBack);
      },
      itemCount: widget.authors.length,
    );
  }
}

// class _AuthorsState extends State<Authors> {
//
//   var value = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       padding: const EdgeInsets.all(0),
//       itemBuilder: (context, index) {
//         return CheckboxListTile.adaptive(
//           value: value,
//           controlAffinity: ListTileControlAffinity.leading,
//           dense: true,
//           onChanged: (val) {
//             setState(() {
//               value = !value;
//             },);
//             },
//           title: Text(
//             widget.authors[index],
//             style: TextStyle(color: widget.textColor),
//           ),
//         )
//             .animate(
//           controller: widget.animationController,
//         )
//             .then(delay: Duration(milliseconds: 300 + index * 50))
//             .slideY(
//             begin: 1.4,
//             end: 0,
//             duration: const Duration(
//               milliseconds: 300,
//             ),
//             curve: Curves.easeOutBack);
//       },
//       itemCount: widget.authors.length,
//     );
//   }
// }

