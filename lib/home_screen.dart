import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'detail_screen.dart';
import 'homecanrtoller.dart';
import 'model_class.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  HomeController homeController = Get.put(HomeController());

  AnimationController? _animationController;

  Animation? rotate;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));

    rotate = Tween<double>(begin: 10, end: 30).animate(_animationController!);

    _animationController!..repeat();

    rotate!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text(
            "Treva",
            style: TextStyle(
                color: Colors.blueGrey.shade900,
                fontSize: 25,
                fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: homeController.details.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 170,
                    width: 270,
                    margin: EdgeInsets.only(right: 20, top: 15, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade700,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${homeController.details[index].name}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Milkyway Galaxy",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 2,
                            width: 30,
                            color: Colors.greenAccent,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on,
                                        color: Colors.grey, size: 18),
                                    Text(
                                      "2022k km",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                    Text(
                                      "2022k km",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    homeController.detailsdata = Model(
                      name: homeController.details[index].name,
                      photo: homeController.details[index].photo,
                      about: homeController.details[index].about,
                    );
                    Get.to(Anotherone());
                  },
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40,left: 12),
                      child: Transform.rotate(
                        angle: rotate!.value * 1,
                        child: Container(
                          height: 120,
                          width: 120,
                          child: Image.asset(
                              "${homeController.details[index].photo}"),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}