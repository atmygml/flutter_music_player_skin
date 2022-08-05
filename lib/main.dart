// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'package:window_size/window_size.dart';
import 'components/components.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle("Music Player Skin v0.1.0");
    setWindowMinSize(const Size(400, 730));
    setWindowMaxSize(const Size(400, 730));
  }
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  ).then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Music Player Skin',
      home: const SongPage(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // ... etc.
      };
}
