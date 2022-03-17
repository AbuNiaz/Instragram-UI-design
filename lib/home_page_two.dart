import 'package:flutter/material.dart';

class HomePageTwo extends StatefulWidget {
  const HomePageTwo({Key? key}) : super(key: key);

  @override
  State<HomePageTwo> createState() => _HomePageTwoState();
}

class _HomePageTwoState extends State<HomePageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SizedBox(
            child: Image.asset(
              "images/instagram.jpg",
              height: 100,
              width: 150,
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_border)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.chat_bubble_outline)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        8,
                        (index) => Container(
                            padding: const EdgeInsets.all(10),
                            child: const CircleAvatar()))),
              )
            ],
          ),
        ));
  }
}
