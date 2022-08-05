// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'components.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 18.0,
            ),
            child: Column(
              children: [
                // back button and menu button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SizedBox(
                        height: 55.0,
                        width: 55.0,
                        child: NewBox(
                          child: Icon(
                            Icons.arrow_back_rounded,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'P L A Y L I S T',
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SizedBox(
                        height: 55.0,
                        width: 55.0,
                        child: NewBox(
                          child: Icon(
                            Icons.menu_rounded,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                // cover art, artist name and song name
                Center(
                  child: NewBox(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'lib/assets/images/cover.jpg',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 3.0),
                                  Text(
                                    'Song Name',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'Artist Name',
                                    style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 32.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 22.0,
                ),
                // start time, shuffle button, repeat button, end time
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '0:00',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    Icon(
                      Icons.shuffle,
                      size: 22.0,
                    ),
                    Icon(
                      Icons.repeat,
                      size: 22.0,
                    ),
                    Text(
                      '3:22',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18.0,
                ),
                // linear progress bar
                NewBox(
                  child: LinearPercentIndicator(
                    lineHeight: 10.0,
                    percent: 0.5,
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                // previous song, pause play, next song
                SizedBox(
                  height: 60.0,
                  child: Row(
                    children: [
                      Expanded(
                        child: NewBox(
                          child: Icon(
                            Icons.skip_previous_rounded,
                            size: 28.0,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                          ),
                          child: NewBox(
                            child: Icon(
                              Icons.play_arrow_rounded,
                              size: 28.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: NewBox(
                          child: Icon(
                            Icons.skip_next_rounded,
                            size: 28.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
