import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:gita/controller/gita_provider.dart';
import 'package:gita/controller/json_provider.dart';
import 'package:gita/controller/song_provider.dart';
import 'package:gita/view/audio/song_detail.dart';
import 'package:gita/view/screens/gita_adhyay_shlok.dart';
import 'package:gita/view/screens/homepage.dart';
import 'package:provider/provider.dart';

import 'models/song_modals.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => JSONProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => GitaProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => SongProvider(
                songModel: SongModel(
              isPlay: false,
              isMute: false,
              assetsAudioPlayer: AssetsAudioPlayer(),
              currentSliderValue: const Duration(seconds: 0),
            )),
          ),
        ],
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/': (context) => const Home_Screen(),
        'Gita_shloka': (context) => const Gita_shloka(),
        'audio_detail': (context) => const DetailPage(),
        // 'video_detail': (context) => const Video_Detail(),
      },
    );
  }
}
