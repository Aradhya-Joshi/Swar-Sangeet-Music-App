import 'package:flutter/material.dart';
import 'package:music_app_sangeet/SongDetails/components/fav_song.dart';
import 'package:music_app_sangeet/home/models/song_detail.dart';

var fav = FavSong();

List<SongDetail> songList = [
  SongDetail(
      title: "Indian Classical ",
      colorScheme: const ColorScheme.light(),
      attributes: [
        // Container(
        //   height: 20,width: 20,
        //   child: Tab(
        //     icon: Image.asset('lib/assets/veena.png'),
        //     text: 'Browse',
        //   ),
        // ),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/veena.png'),
              width: 50,
              height: 50,
            ),

            // icon:  const ImageIcon(
            //   AssetImage('assets/icons/veena.png'),
            //   size: 20,
            // This transparent color works fine for web version
            // of app but not well for app. The app icons become
            // completely transparent.
            //c0ff)olor: Colors.red,//Color(0x00ff0,
            // Can comment color property to let icons be
            // drawn with default colors of the parent widget.
            // Can do AND of Mask value which is the AND of mask values
            // and original values of image colours to get back
            // original colours from the masked image.

            //Used to override the ColorScheme.light() defined color
            // and keep the origial color of the image.
            //),
            title: "Dhrupad"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/sitar.png'),
            ),
            // size: 20,
            // color: Color(0x00000000),

            title: "Khyal"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/sarangi.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/sarangi.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Tarana"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/harmonium.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/harmonium.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Thumri"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/tabla.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/tabla.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Dhamar"),
      ],
      textColor: const Color(0xff171f52),
      //Colors.red,
      description:
          'Indian classical music is a genre of music that has been around for centuries and is deeply rooted in Indian culture. It is a complex and intricate form of music that requires years of training to master. The greatness of Indian classical music lies in its ability to evoke emotions and create a sense of peace and tranquility in the listener.',
      picture: "IndianClassical-2.png",
      pictureAlt: 'IndianClassical.png',
      authors: List.generate(3, (i) => 'Song ${i + 1}'),
      // Can make list of songs as below or use API to fetch song names from web Data Base.
      // authors: [
      //   "2 cloves garlic, crushed",
      //   "2 racks of lamb, frenched and trimmed of fat",
      //   "2 tbsp olive oil",
      //   "½ cup AB's Ironbark Honey",
      //   "2 tsp fresh rosemary, chopped coarsely",
      //   "2 tsp lemon zest, grated",
      //   "1 roasted rose"
      // ],
      method: ""),
  SongDetail(
      title: " JAZZ ",
      colorScheme: const ColorScheme.dark(
        background: Color(0xff223242),
      ),
      textColor: Colors.white,
      attributes: [
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/piano.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/piano.png'),
            //   size: 20,
            //   color: Color(0xffffffff),//Color(0x00ff00ff),
            // ),
            title: "Swing"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/trumpet.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/trumpet.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Bebop"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/drums.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/drums.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Fusion"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/bass-guitar.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/bass-guitar.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Free Jazz"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/saxophone.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/saxophone.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Hard Bop"),
      ],
      description:
          'Jazz is a music genre that originated in the African-American communities of New Orleans, Louisiana, in the late 19th and early 20th centuries, with its roots in blues and ragtime 1. It has since been recognized as a major form of musical expression in traditional and popular music 1. Jazz is characterized by swing and blue notes, complex chords, call and response vocals, polyrhythms, and improvisation',
      picture: "Jazz-2.png",
      pictureAlt: "Jazz.png",
      authors: List.generate(3, (i) => 'Song ${i + 1}'),
      // Can make list of songs as below or use API to fetch song names from web Data Base.
      // authors: [
      //   "2 cloves garlic, crushed",
      //   "1 tomato",
      //   "1 cup Mozarella Cheese",
      //   "2 tbsp olive oil",
      //   "½ cup AB's Ironbark Honey",
      //   "2 tsp fresh rosemary, chopped coarsely",
      //   "2 tsp lemon zest, grated",
      //   "1 tsp sugar"
      // ],
      method: ""),
  SongDetail(
      title: " Retro ",
      colorScheme: const ColorScheme.light(),
      textColor: const Color(0xff171f52),
      attributes: [
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/keyboard.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/keyboard.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Synthwave"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/walkman.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/walkman.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "City Pop"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/piano.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/piano.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Lo-fi"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/drums.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/drums.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Retro Pop"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/bass-guitar.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/bass-guitar.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Rockabilly"),
      ],
      description:
          'Retro music is a term used to describe music that is imitative or consciously derivative of lifestyles, trends, or art forms from history, including in music, modes, fashions, or attitudes. The term “retro” is attributed to anything derivative of history or the past—think of styles and modes 20-40 years back. In popular culture, this never-ending round of reviving old trends is also known as the nostalgia cycle. Today’s trends can be traced back to the 1950s’ rockabilly or “rock and roll” genre. It’s spawned several subgenres today: Country rock, like Kings of Leon; pop punk, like Green Day; and even grunge pop, like Nirvana.',
      picture: "Retro-2.png",
      pictureAlt: "Retro.png",
      authors: List.generate(3, (i) => 'Song ${i + 1}'),
      // Can make list of songs as below or use API to fetch song names from web Data Base.
      // authors: [
      //   "2 cloves garlic, crushed",
      //   "1 tomato",
      //   "1 cup Mozarella Cheese",
      //   "2 tbsp olive oil",
      //   "½ cup AB's Ironbark Honey",
      //   "2 tsp fresh rosemary, chopped coarsely",
      //   "2 tsp lemon zest, grated",
      //   "1 tsp sugar"
      // ],
      method: ""),
  SongDetail(
      title: " EDM ",
      colorScheme: const ColorScheme.dark(
        background: Color(0xff223242),
      ),
      textColor: Colors.white,
      attributes: [
        // Container(
        //   height: 20,width: 20,
        //   child: Tab(
        //     icon: Image.asset('lib/assets/veena.png'),
        //     text: 'Browse',
        //   ),
        // ),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/keyboard.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/keyboard.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            //   //Used to override the ColorScheme.light() defined color
            //   // and keep the origial color of the image.
            // ),
            title: "Trance"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/bass-guitar.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/bass-guitar.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Dubstep"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/drums.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/drums.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Moombahton"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/drums.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/drums.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Hardstyle"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/trumpet.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/trumpet.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Future House"),
      ],
      //Colors.red,
      description:
          'Electronic dance music (EDM) is a genre of percussive electronic music that originated in nightclubs, raves, and festivals. It is generally produced for playback by DJs who create seamless selections of tracks, called a DJ mix, by segueing from one recording to another 1. EDM producers also perform their music live in a concert or festival setting in what is sometimes called a live PA. Since its inception, EDM has expanded to include a wide range of subgenres',
      picture: "EDM-2.png",
      pictureAlt: 'EDM.png',
      authors: List.generate(3, (i) => 'Song ${i + 1}'),
      // Can make list of songs as below or use API to fetch song names from web Data Base.
      // authors: [
      //   "2 cloves garlic, crushed",
      //   "2 racks of lamb, frenched and trimmed of fat",
      //   "2 tbsp olive oil",
      //   "½ cup AB's Ironbark Honey",
      //   "2 tsp fresh rosemary, chopped coarsely",
      //   "2 tsp lemon zest, grated",
      //   "1 roasted rose"
      // ],
      method: ""),
  SongDetail(
      title: " Favourites ",
      colorScheme: const ColorScheme.light(),
      attributes: [
        // Can provide this from fav song class as list of attributes depending on users list of fav songs.
        // Container(
        //   height: 20,width: 20,
        //   child: Tab(
        //     icon: Image.asset('lib/assets/veena.png'),
        //     text: 'Browse',
        //   ),
        // ),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/veena.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/veena.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            //   //Used to override the ColorScheme.light() defined color
            //   // and keep the origial color of the image.
            // ),
            title: "Dhrupad"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/sitar.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/sitar.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Khyal"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/sarangi.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/sarangi.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Tarana"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/harmonium.png'),
            ),

            // icon: const ImageIcon(
            //   AssetImage('assets/icons/harmonium.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Thumri"),
        Attribute(
            icon: const Image(
              image: AssetImage('assets/icons/tabla.png'),
            ),
            // icon: const ImageIcon(
            //   AssetImage('assets/icons/tabla.png'),
            //   size: 20,
            //   color: Color(0x00000000),
            // ),
            title: "Dhamar"),
      ],
      textColor: const Color(0xff171f52),
      //Colors.red,
      description: 'All the songs that you have liked so far.',
      picture: "Fav-2.png",
      pictureAlt: 'Fav.png',
      authors: fav.getFavSong(),
      // Can make list of songs as below or use API to fetch song names from web Data Base.
      // authors: [
      //   "2 cloves garlic, crushed",
      //   "2 racks of lamb, frenched and trimmed of fat",
      //   "2 tbsp olive oil",
      //   "½ cup AB's Ironbark Honey",
      //   "2 tsp fresh rosemary, chopped coarsely",
      //   "2 tsp lemon zest, grated",
      //   "1 roasted rose"
      // ],
      method: ""),
];
