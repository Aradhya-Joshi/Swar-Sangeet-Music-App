import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home/splash_screen.dart';

void main() async {
  // print("init"); /// Used to check if main is functioning properly and is running confirming Gradel configs are correct as gradel works at compile time.
  WidgetsFlutterBinding.ensureInitialized();
  // print("init Widget"); /// Checkig if proper initialization of Widgets is happening i.e. widget tree, render tree are in sync and are able to deploy the UI.
  await Firebase.initializeApp(
    /// Since initializeApp() method called in to as default for complete app the options arguments must be present and the method must not have null arguments.
    options: const FirebaseOptions(
        apiKey: 'AIzaSyC30Mkw_o4VoiiULNrJrnUtyHkZVrKs0oA',
        // Project Settings > General > Web API Key
        appId: '1:813584039727:android:5b8cf5c642a57f3336abda',
        // Project Settings > General > Your Apps > App Id
        messagingSenderId: '813584039727',
        // Project Settings > Cloud Messaging > Sender Id
        projectId: 'musicapp-aeb3d'), // Project Settings > General > Project Id
  );
  // print("init Firebase"); /// Checking that the Firebase is properly initialized and connected and is ready for use.
  // FirebaseApp app = await Firebase.initializeApp();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Music App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff45C37B),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
