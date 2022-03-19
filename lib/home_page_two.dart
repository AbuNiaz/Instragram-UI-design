import 'package:flutter/material.dart';

class HomePageTwo extends StatefulWidget {
  const HomePageTwo({Key? key}) : super(key: key);

  @override
  State<HomePageTwo> createState() => _HomePageTwoState();
}

class _HomePageTwoState extends State<HomePageTwo> {
  List<String> profileImages = [
    "images/g2.jpg",
    "images/g3.jpg",
    "images/g4.jpg",
    "images/g5.jpg",
    "images/g6.jpg",
    "images/Girl-DP.jpg",
    "images/s1.jpg",
    "images/s2.jpg",
  ];
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
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_circle),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat_bubble_outline),
          ),
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
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage:
                                    const AssetImage("images/pink.png"),
                                child: CircleAvatar(
                                  radius: 32,
                                  backgroundImage:
                                      AssetImage(profileImages[index]),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Profile Name",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.black87),
                              ),
                            ],
                          )))),
            ),
            const Divider(),
            Column(
                children: List.generate(
                    8,
                    (index) => Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  child: CircleAvatar(
                                      radius: 32,
                                      backgroundImage:
                                          AssetImage(profileImages[index])),
                                ),
                                const Text("Profile Name"),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.more_vert))
                              ],
                            ),
                            Image.asset("images/s2.jpg")
                          ],
                        )))
          ],
        ),
      ),
    );
  }
}
