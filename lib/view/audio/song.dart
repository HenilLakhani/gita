import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/player_list.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({Key? key}) : super(key: key);

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  botton({
    required text,
    required image,
    required arguments,
  }) {
    return GestureDetector(
      onTap: () {
        index = 0;
        Navigator.of(context).pushNamed('audio_detail', arguments: arguments);
      },
      child: Column(
        children: [
          Container(
            height: 170,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: image,
                fit: BoxFit.cover,
              ),
              color: Colors.black12,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: GoogleFonts.akshar(
                fontSize: 12, fontWeight: FontWeight.w600, letterSpacing: 0.5),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.yellow,
              Colors.pink,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.symmetric(vertical: 32)),
            CarouselSlider(
              options: CarouselOptions(
                height: 160,
                viewportFraction: 0.6,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayCurve: Curves.linear,
                enlargeCenterPage: true,
              ),
              items: images
                  .map(
                    (e) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(e),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.blue,
                  Colors.amberAccent,
                ]),
              ),
              height: 30,
              width: double.infinity,
              child: Center(
                child: Text(
                  "Gita playlist",
                  style: GoogleFonts.arapey(
                      letterSpacing: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 12,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      botton(
                        text: "Adhyay-1",
                        image: AssetImage(images[index]),
                        arguments: allSongs[index],
                      ),
                      botton(
                        text: "Adhyay-2",
                        image: AssetImage(images[index + 1]),
                        arguments: allSongs[index],
                      ),
                      botton(
                        text: "Adhyay-3",
                        image: AssetImage(images[index + 2]),
                        arguments: allSongs[index],
                      ),
                      botton(
                        text: "Adhyay-4",
                        image: AssetImage(images[index + 3]),
                        arguments: allSongs[index],
                      ),
                      botton(
                        text: "Adhyay-5",
                        image: AssetImage(images[index + 4]),
                        arguments: allSongs[index],
                      ),
                      botton(
                        text: "Adhyay-6",
                        image: AssetImage(images[index + 5]),
                        arguments: allSongs[index],
                      ),
                      botton(
                        text: "Adhyay-7",
                        image: AssetImage(images[index + 6]),
                        arguments: allSongs[index],
                      ),
                      botton(
                        text: "Adhyay-8",
                        image: AssetImage(images[index + 7]),
                        arguments: allSongs[index],
                      ),
                      botton(
                        text: "Adhyay-9",
                        image: AssetImage(images[index + 8]),
                        arguments: allSongs[index],
                      ),
                      botton(
                        text: "Adhyay-10",
                        image: AssetImage(images[index + 9]),
                        arguments: allSongs[index],
                      ),
                      botton(
                        text: "Adhyay-11",
                        image: AssetImage(images[index + 10]),
                        arguments: allSongs[index],
                      ),
                      botton(
                        text: "Adhyay-12",
                        image: AssetImage(images[index + 11]),
                        arguments: allSongs[index],
                      ),
                      botton(
                        text: "Adhyay-13",
                        image: AssetImage(images[index + 12]),
                        arguments: allSongs[index],
                      ),
                      botton(
                        text: "Adhyay-14",
                        image: AssetImage(images[index + 13]),
                        arguments: allSongs[index],
                      ),
                      botton(
                        text: "Adhyay-15",
                        image: AssetImage(images[index + 14]),
                        arguments: allSongs[index],
                      ),
                      botton(
                        text: "Adhyay-16",
                        image: AssetImage(images[index + 15]),
                        arguments: allSongs[index],
                      ),
                      botton(
                        text: "Adhyay-17",
                        image: AssetImage(images[index + 16]),
                        arguments: allSongs[index],
                      ),
                      botton(
                        text: "Adhyay18",
                        image: AssetImage(images[index + 17]),
                        arguments: allSongs[index],
                      ),
                    ],
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
// GridView.builder(
//   gridDelegate:
//       const SliverGridDelegateWithFixedCrossAxisCount(
//     crossAxisCount: 2,
//     mainAxisSpacing: 10,
//     crossAxisSpacing: 10,
//   ),
//   itemCount: images.length,
//   itemBuilder: (context, i) {
//     return GestureDetector(
//       onTap: () {
//         index = i;
//         Navigator.of(context).pushNamed('audio_detail',
//             arguments: allSongs[i]);
//       },
//       child: Column(
//         children: [
//           Container(
//             height: 112,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage("${images[i]}"),
//                 fit: BoxFit.cover,
//               ),
//               color: Colors.black12,
//               borderRadius: BorderRadius.circular(2),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Text(
//             "${images[i]}",
//             style: GoogleFonts.akshar(
//                 fontSize: 12,
//                 fontWeight: FontWeight.w600,
//                 letterSpacing: 0.5),
//           ),
//         ],
//       ),
//     );
//   },
// ),
