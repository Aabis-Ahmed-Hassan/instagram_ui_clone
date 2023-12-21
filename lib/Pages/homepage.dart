import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var randomNumber = Random();
  List profilePictures = [
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg",
    "assets/4.jpg",
    "assets/5.jpg",
    "assets/6.jpg",
    "assets/7.jpg",
    "assets/8.jpg",
    "assets/9.jpg",
    "assets/10.jpg",
    "assets/11.jpg",
    "assets/12.jpg",
  ];

  List names = [
    "aabis_hassan",
    "kumail_taha",
    "ali_hassan",
    "irfan_abid",
    "sibtain_wahab",
    "waqar_rehbar",
    "hassan_raza",
    "m_sohaib",
    "baqir_ali",
    "m_safwan",
    "habib_chella",
    "talha_hanif",
  ];

  List posts = [
    "assets/post_1.jpg",
    "assets/post_2.jpg",
    "assets/post_3.jpg",
    "assets/post_4.jpg",
    "assets/post_5.jpg",
    "assets/post_6.jpg",
    "assets/post_7.jpg",
    "assets/post_8.jpg",
    "assets/post_9.jpg",
    "assets/post_10.jpg",
    "assets/post_11.jpg",
    "assets/post_12.jpg",
    "assets/post_13.jpg",
    "assets/post_14.jpg",
    "assets/post_15.jpg",
    "assets/post_16.jpg",
  ];

  List captions = [
    "Dream big, act now.",
    "Stay focused, stay humble.",
    "Rise above, thrive.",
    "Be fearless, be kind.",
    "Own your story, shine.",
    "Create, conquer, repeat.",
    "Chase dreams, not things.",
    "Embrace the journey.",
    "Do epic things.",
    "Sparkle with purpose.",
    "Leap, grow, inspire.",
    "Hustle with heart.",
  ];

  var randomIndex = 0;
  var randomIndex2 = 0;

  Future<void> refreshDelay() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      randomIndex = randomNumber.nextInt(12);
      randomIndex2 = randomNumber.nextInt(12);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              'Instagram',
              style: TextStyle(
                  fontFamily: 'Billabong',
                  color: Color(0xff262626),
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.heart),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.facebookMessenger),
              ),
            ]),
        body: RefreshIndicator(
          onRefresh: refreshDelay,
          child: SingleChildScrollView(
              child: Column(
            children: [
              //Story
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      12,
                      (index) => Container(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 37,
                                backgroundImage:
                                    const AssetImage('assets/story.png'),
                                child: CircleAvatar(
                                  radius: 32,
                                  backgroundImage: AssetImage(profilePictures[
                                      (randomIndex + index) % 12]),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(names[(randomIndex + index) % 12],
                                  style: const TextStyle(
                                    fontSize: 15,
                                  )),
                            ],
                          ))),
                ),
              ),
              const Divider(),
              Column(
                children: List.generate(
                  12,
                  (index) => Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: CircleAvatar(
                                radius: 16,
                                backgroundImage:
                                    const AssetImage('assets/story.png'),
                                child: CircleAvatar(
                                  radius: 13,
                                  backgroundImage: AssetImage(profilePictures[
                                      (randomIndex2 + index) % 12]),
                                )),
                          ),
                          Text(
                            names[(randomIndex2 + index) % 12],
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Icon(index % 3 == 0 ? Icons.verified : null,
                              color: Colors.blue, size: 16),
                          const Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: index % 4 == 0
                                ? Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffe9e9e9),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 8),
                                    child: Text(index % 4 == 0 ? 'Follow' : '',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)),
                                  )
                                : Container(),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert)),
                        ],
                      ),
                      Image(
                        image: AssetImage(
                          posts[(randomIndex2 + index) % 12],
                        ),
                        height: 300,
                        width: 500,
                        fit: BoxFit.fitWidth,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 0),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                FontAwesomeIcons.heart,
                              ),
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.chat_bubble_outline),
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.send),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.bookmark),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage: AssetImage(profilePictures[
                                      (randomIndex2 + index + 3) % 12]),
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: '  Liked by ',
                                      ),
                                      TextSpan(
                                          text:
                                              '${names[(randomIndex2 + index + 3) % 12]}',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      const TextSpan(
                                        text: ' and ',
                                      ),
                                      TextSpan(
                                        text:
                                            '${randomNumber.nextInt(999)} others',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                text: '${names[(randomIndex2 + index) % 12]} ',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text:
                                      '${captions[(randomIndex2 + index) % 12]} ')
                            ])),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              'View all ${randomNumber.nextInt(20)} comments',
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 13,
                                    backgroundImage:
                                        AssetImage('assets/myProfile.png'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Add a comment...',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              index % 3 == 0
                                  ? '${(index % 4) + 2} days ago'
                                  : '${(index % 4) + 1} hours ago',
                              style: const TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
        ));
  }
}
