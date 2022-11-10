import 'package:flutter/material.dart';
import 'package:travelapp/model/place_model2.dart';
import 'package:travelapp/screens/welcome/Home/lainya_screen.dart';
import 'package:travelapp/screens/welcome/Home/widgets/recommended_card.dart';
import 'package:travelapp/screens/welcome/detailscreen/detail_screen2.dart';
import 'package:travelapp/utilities/colors.dart';

import 'widgets/category_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteClr,
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/home.png",
                  height: 35,
                  width: 35,
                  color: kPrimaryClr,
                ),
                Image.asset(
                  "assets/calender.png",
                  height: 35,
                  width: 35,
                  color: Colors.grey,
                ),
                Image.asset(
                  "assets/bookmark.png",
                  height: 35,
                  width: 35,
                  color: Colors.grey,
                ),
                Image.asset(
                  "assets/bubble-chat.png",
                  height: 35,
                  width: 35,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // app bar
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 27,
                            backgroundImage: AssetImage("assets/ngab.jpeg"),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          RichText(
                              text: const TextSpan(
                                  text: "Hello",
                                  style: TextStyle(color: kBlackClr),
                                  children: [
                                TextSpan(
                                    text: " Kidzzz",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ))
                              ]))
                        ],
                      ),
                      // search section
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Eksplore Destinasi Perjalanan Anda",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(100),
                        elevation: 5,
                        child: Container(
                          decoration: BoxDecoration(
                              color: kWhiteClr,
                              borderRadius: BorderRadius.circular(100)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: "Cari Tempat Tujuan Anda",
                                      prefixIcon: Icon(Icons.search),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                                const CircleAvatar(
                                  radius: 22,
                                  backgroundColor: kPrimaryClr,
                                  child: Icon(
                                    Icons.sort_by_alpha_sharp,
                                    color: kWhiteClr,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Category
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Kategori",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 70,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                                CategoryCard(
                                  press: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Traveling()),
                                    );
                                  },
                                  image: "assets/mountains.jpeg",
                                  title: "Gunung",
                                ),
                                CategoryCard(
                                  press: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Traveling()),
                                    );
                                  },
                                  image: "assets/forests.jpeg",
                                  title: "Hutan",
                                ),
                                CategoryCard(
                                  press: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Traveling()),
                                    );
                                  },
                                  image: "assets/sea.webp",
                                  title: "Pantai",
                                ),
                                CategoryCard(
                                  press: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Traveling()),
                                    );
                                  },
                                  image: "assets/deserts.jpeg",
                                  title: "Gurun Pasir",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // recommended
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Rekomendasi",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 350,
                          child: ListView.builder(
                              itemCount: places.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 15),
                                  child: Row(
                                    children: [
                                      RecommendedCard(
                                        placeInfo2: places[index],
                                        press: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      DetailScreen(
                                                        placeInfo2:
                                                            places[index],
                                                      )));
                                        },
                                      )
                                    ],
                                  ),
                                );
                              }))
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
