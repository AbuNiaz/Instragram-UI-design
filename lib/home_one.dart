import 'package:flutter/material.dart';
import 'package:instragram_ui/home_page_two.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePageTwo(),
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
                      ? const Color.fromARGB(203, 73, 101, 1)
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
                      ? const Color.fromARGB(203, 73, 101, 1)
                      : const Color.fromRGBO(40, 40, 40, 1),
                )),
            const Spacer(),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.ondemand_video)),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.card_travel)),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
