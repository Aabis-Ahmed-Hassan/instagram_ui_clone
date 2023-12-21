import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  List hightlightImages = [
    "assets/post_10.jpg",
    "assets/post_2.jpg",
    "assets/post_13.jpg",
    "assets/post_6.jpg",
    "assets/post_13.jpg",
    "assets/post_7.jpg",
    "assets/highlight_4.png",

  ];

  List highlightTexts = [
    "Cars",
    "Nature",
    "Tech",
    "Travel",
    "Quotes",
    "Code",
    "New",
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

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: Scaffold(
          appBar: AppBar(
              automaticallyImplyLeading: false,
              title: const Text('aabis_ahmed_hassan',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_box_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                ),
              ]),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage('assets/myProfile.png'),
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Column(
                            children: [
                              Text('25',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Text('Posts'),
                            ],
                          ),
                          Column(
                            children: [
                              Text('719',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Text('Followers'),
                            ],
                          ),
                          Column(
                            children: [
                              Text('137',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Text('Following'),
                            ],
                          ),
                        ],
                      ),
                      const Text(
                        'Aabis Ahmed Hassan',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        '~~~Flutter Developer~~~',
                      ),
                      const Text(
                        '~~~Apsacian~~~',
                      ),
                      const Text(
                        '~~~Uetian~~~',
                      ),
                      const Row(
                        children: [
                          Icon(Icons.link, color: Colors.blue),
                          Text(
                            'wa.me/923300615574',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffe4e4e4),
                              ),
                              child: const Center(
                                  child: Text(
                                'Edit',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffe4e4e4),
                              ),
                              child: const Center(
                                  child: Text(
                                'Share',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffe4e4e4),
                              ),
                              child: const Center(
                                  child: Text(
                                'Contact',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        7,
                            (index) => Row(
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 38,
                                  backgroundImage: const AssetImage(
                                      'assets/highlight_cover.png'),
                                  child: CircleAvatar(
                                    radius: index==6 ? 38 : 32,
                                    backgroundImage:
                                    AssetImage(hightlightImages[index]),
                                  ),
                                ),
                                Text(highlightTexts[index]),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: List.generate(
                      4,
                      (index) => Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 3, bottom: 3),
                                  child: Image(
                                    image: AssetImage(
                                      posts[index + 5],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 3, bottom: 3),
                                  child: Image(
                                    image: AssetImage(
                                      posts[index + 8],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 3),
                                  child: Image(
                                    image: AssetImage(
                                      posts[index + 11],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                )
              ],
            ),
          )),
    );
  }
}
