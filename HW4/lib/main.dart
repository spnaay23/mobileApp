import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

void main() {
  runApp(MaterialApp(
    title: 'Chiang Mai',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        title: Center(child: Text("Chiang Mai")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.ios_share)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(children: [
                ImageSlideshow(
                    indicatorColor: Colors.redAccent,
                    indicatorBackgroundColor: Colors.white,
                    height: 200,
                    autoPlayInterval: 5000,
                    indicatorRadius: 4,
                    isLoop: true,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Image.asset("images/KC1.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Image.asset("images/KC2.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Image.asset("images/BG1.png"),
                      ),
                    ]),
              ]),
            ),
            Text(
              "UNESCO Sustainable Travel pledge",
              style: TextStyle(fontSize: 15, color: Colors.white54),
            ),
            Text("Shangri-La Chiang Mai",
                style: TextStyle(fontSize: 25, color: Colors.white)),
            Row(children: [
              Icon(
                Icons.star,
                color: Colors.white54,
              ),
              Icon(
                Icons.star,
                color: Colors.white54,
              ),
              Icon(
                Icons.star,
                color: Colors.white54,
              ),
              Icon(
                Icons.star,
                color: Colors.white54,
              ),
              Icon(
                Icons.star,
                color: Colors.white54,
              ),
            ]),
            Text(
              "Luxury hotel with free water park near Chiang Mai Night Bazaar.",
              style: TextStyle(fontSize: 20, color: Colors.white54),
            ),
            SizedBox(
              height: 40,
            ),
            Text("9.0/10 Superb",
                style: TextStyle(fontSize: 25, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text("1000 verified Hotels.com guest reviews",
                style: TextStyle(fontSize: 15, color: Colors.white54)),
            SizedBox(
              height: 5,
            ),
            Text("see all 1,000 reviews   >",
                style: TextStyle(fontSize: 15, color: Colors.blue[200])),
            SizedBox(
              height: 30,
            ),
            Text("Popular amenities",
                style: TextStyle(fontSize: 25, color: Colors.white)),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.wifi,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text("Free Wifi",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.ac_unit,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text("Air conditioning",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.fitness_center,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text("Gym",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white))
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.pool,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text("Pool",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.car_repair,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text("Free parking",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.kitchen,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text("Refrigerator",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
