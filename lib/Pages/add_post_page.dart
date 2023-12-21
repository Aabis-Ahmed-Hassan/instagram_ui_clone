import 'dart:math';

import 'package:flutter/material.dart';

class AddPost extends StatelessWidget {
  AddPost({super.key});
  var randomPost = Random();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close, size: 36),
          ),
          title: const Center(
            child:
                Text('New Post', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Next',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/1.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    'Recents',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_down, color: Colors.black),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(right: 7),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xffc1986a),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.copy, color: Colors.white, size: 16),
                        Text(
                          ' SELECT MULTIPLE',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 7),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                    decoration: BoxDecoration(
                      color: const Color(0xffc1986a),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(Icons.camera_alt,
                        color: Colors.white, size: 16),
                  ),
                ],
              ),
            ),
            Column(
              children: List.generate(
                  6,
                  (index) => Row(
                        children: [
                          Expanded(
                            child: Image(
                              image:
                                  AssetImage(posts[randomPost.nextInt(15) + 1]),
                            ),
                          ),
                          Expanded(
                            child: Image(
                              image:
                                  AssetImage(posts[randomPost.nextInt(15) + 1]),
                            ),
                          ),
                          Expanded(
                            child: Image(
                              image:
                                  AssetImage(posts[randomPost.nextInt(15) + 1]),
                            ),
                          ),
                          Expanded(
                            child: Image(
                              image:
                                  AssetImage(posts[randomPost.nextInt(15) + 1]),
                            ),
                          ),
                        ],
                      )),
            )
          ],
        ),
      ),
    );
  }
}
