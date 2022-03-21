import 'package:flutter/material.dart';
import 'package:instragram_ui/home_page_two.dart';
import 'package:instragram_ui/search_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage == 1 ? SearchPage() : HomePageTwo(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 0;
                  });
                },
                icon: Icon(
                  Icons.home,
                  color: currentPage == 0
                      ? const Color.fromRGBO(203, 73, 101, 1)
                      : const Color.fromRGBO(40, 40, 40, 1),
                )),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 1;
                  });
                },
                icon: Icon(
                  Icons.search,
                  color: currentPage == 1
                      ? const Color.fromRGBO(203, 73, 101, 1)
                      : const Color.fromRGBO(40, 40, 40, 1),
                )),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 2;
                  });
                },
                icon: Icon(
                  Icons.ondemand_video,
                  color: currentPage == 2
                      ? const Color.fromRGBO(203, 73, 101, 1)
                      : const Color.fromRGBO(40, 40, 40, 1),
                )),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 3;
                  });
                },
                icon: Icon(
                  Icons.card_travel,
                  color: currentPage == 3
                      ? const Color.fromRGBO(203, 73, 101, 1)
                      : const Color.fromRGBO(40, 40, 40, 1),
                )),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 4;
                  });
                },
                icon: Icon(
                  Icons.person,
                  color: currentPage == 4
                      ? const Color.fromRGBO(203, 70, 101, 1)
                      : const Color.fromRGBO(40, 40, 40, 1),
                )),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
