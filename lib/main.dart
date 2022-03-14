import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
