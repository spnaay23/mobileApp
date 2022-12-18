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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Colors.black,
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Stack(children: [
                      ImageSlideshow(
                          indicatorColor: Colors.white,
                          indicatorBackgroundColor: Colors.white54,
                          height: 180,
                          autoPlayInterval: 5000,
                          indicatorRadius: 4,
                          isLoop: true,
                          children: [
                            AspectRatio(
                              aspectRatio: 16 / 9,
                              child: Image.asset(
                                "images/shang1.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            AspectRatio(
                              aspectRatio: 16 / 9,
                              child: Image.asset(
                                "images/shang2.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            AspectRatio(
                              aspectRatio: 16 / 9,
                              child: Image.asset(
                                "images/shang3.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            AspectRatio(
                              aspectRatio: 16 / 9,
                              child: Image.asset(
                                "images/shang1.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            AspectRatio(
                              aspectRatio: 16 / 9,
                              child: Image.asset(
                                "images/shang2.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.only(left: 300, top: 125),
                        width: 100,
                        height: 50,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Row(children: const [
                            Icon(Icons.photo_library_outlined,
                                color: Colors.white),
                            Text(
                              '  61',
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "UNESCO Sustainable Travel pledge",
                    style: TextStyle(fontSize: 15, color: Colors.white54),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Shangri-La Chiang Mai",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    height: 5,
                  ),
                  Row(children: [
                    Icon(
                      Icons.star,
                      color: Colors.white54,
                      size: 17,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white54,
                      size: 17,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white54,
                      size: 17,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white54,
                      size: 17,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white54,
                      size: 17,
                    ),
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Luxury hotel with free water park near Chiang Mai Night Bazaar.",
                    style: TextStyle(fontSize: 22, color: Colors.white54),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text("9.0/10 Superb",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600)),
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
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600)),
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
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white))
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
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white))
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
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white))
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
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white))
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.directions_car_filled,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text("Free parking",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white))
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.thermostat,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text("Refrigerator",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white))
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: Image.asset("images/map.png"),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: InkWell(
            onTap: () {},
            child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width * 0.92,
              decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  'Select a room',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                      color: Colors.black),
                ),
              ),
            )));
  }
}
