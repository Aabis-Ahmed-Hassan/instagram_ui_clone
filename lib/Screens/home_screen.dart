import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/Pages/homepage.dart';
import 'package:instagram_ui_clone/Pages/add_post_page.dart';
import 'package:instagram_ui_clone/Pages/reels_page.dart';
import 'package:instagram_ui_clone/Pages/search_page.dart';
import 'package:instagram_ui_clone/Pages/user_profile_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: [
          const HomePage(),
          const SearchPage(),
          AddPost(),
          const ReelsPage(),

          const UserProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              },
              icon: const Icon(
                Icons.home,
                size: 30,
              ),
              color: currentPage == 0 ? Colors.black87 : Colors.black54,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              },
              icon: const Icon(
                Icons.search,
                size: 30,
              ),
              color: currentPage == 1 ? Colors.black87 : Colors.black54,
            ),
            IconButton(
              onPressed: () {

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddPost()));
              },
              icon: const Icon(
                Icons.add_box_outlined,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 3;
                });
              },
              icon: const Icon(
                Icons.video_call,
                size: 30,
              ),
              color: currentPage == 3 ? Colors.black87 : Colors.black54,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 4;
                });
              },
              icon: const CircleAvatar(
                backgroundImage: AssetImage('assets/myProfile.png'),
                radius: 16,
              ),
              color: currentPage == 4 ? Colors.black87 : Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
