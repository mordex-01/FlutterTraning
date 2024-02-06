import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: ClipRRect(
              child: Image.asset(
                "assets/a2.jpg",
                width: MediaQuery.sizeOf(context).width,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 550,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Rinjani Mountain",
                      style: TextStyle(fontSize: 20),
                    )
                  ]),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        CupertinoIcons.location_solid,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text("lombok, indonesia"),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width / 3,
                      ),
                      const Text(
                        "\$48",
                        style: TextStyle(fontSize: 30),
                      ),
                      const Text(
                        "/person",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia, At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesio.",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        "Preview",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width / 1.8,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.amber[600],
                      ),
                      const Text(
                        "4.8",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 480,
                    height: 170,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/a3.jpg")),
                        const SizedBox(
                          width: 20,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/a4.jpg")),
                        const SizedBox(
                          width: 20,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              "assets/a5.jpg",
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            "assets/a2.jpg",
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(6, 171, 229, 1),
                            borderRadius: BorderRadius.circular(25)),
                        child: const Center(
                          child: Text(
                            "Book Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 20,
            child: Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                child: const Mybackbutton(
                  icon: Icons.arrow_back,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 20,
            child: Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                child: const Mybackbutton(
                  icon: CupertinoIcons.heart,
                  color: Colors.red,
                ),
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Mybackbutton extends StatelessWidget {
  const Mybackbutton({super.key, required this.icon, required this.color});
  final IconData? icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 50,
      height: 50,
      child: Icon(icon, color: color),
    );
  }
}
