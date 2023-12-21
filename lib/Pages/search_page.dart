import 'dart:math';

import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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

  var randomNumber = Random();
  var randomReel = 0;

  Future<void> refreshDelay() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      randomReel = randomNumber.nextInt(12);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  contentPadding: EdgeInsets.zero,
                  fillColor: const Color(0xffe4e4e4),
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(18),
                  ))),
        ),
        body: RefreshIndicator(
          onRefresh: refreshDelay,
          child: SingleChildScrollView(
              child: Column(
                  children: List.generate(
                      10,
                      (index) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Image(
                                  image: AssetImage(
                                      posts[randomNumber.nextInt(15) + 1]),
                                ),
                              ),
                              Expanded(
                                child: Image(
                                  image: AssetImage(
                                      posts[randomNumber.nextInt(15) + 1]),
                                ),
                              ),
                              Expanded(
                                child: Image(
                                  image: AssetImage(
                                      posts[randomNumber.nextInt(15) + 1]),
                                ),
                              ),
                            ],
                          )))),
        ));
  }
}
