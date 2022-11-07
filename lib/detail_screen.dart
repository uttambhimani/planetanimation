import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homecanrtoller.dart';

class Anotherone extends StatefulWidget {
  const Anotherone({Key? key}) : super(key: key);

  @override
  State<Anotherone> createState() => _AnotheroneState();
}

class _AnotheroneState extends State<Anotherone> {

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          elevation: 0,
          // // // title: Text(
          // // //   "${homeController.detailsdata!.name}",
          // //   style: TextStyle(
          // //       color: Colors.blueGrey.shade900,
          // //       fontSize: 25,
          // //       fontWeight: FontWeight.w700),
          // ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.grey,size: 35),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                    height: 260,
                    width: 450,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 200,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey.shade700,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 60,),
                                Text(
                                  "${homeController.detailsdata!.name}",
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
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                ),
                              ],
                            ),
                          ),
                        ),

                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 120,
                            width: 120,
                            child: Image.asset("${homeController.detailsdata!.photo}"),
                          ),
                        ),
                      ],
                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text("Overview",style: TextStyle(fontSize: 30,color: Colors.white),),
            ),
            Container(
              height: 2,
              width: 50,
              margin: EdgeInsets.only(top: 3,left: 25),
              color: Colors.greenAccent,
            ),

            SizedBox(height: 15,),

            Container(
              padding: EdgeInsets.only(left: 25,right: 25),
              child: Text("${homeController.detailsdata!.about}",style: TextStyle(color: Colors.grey)),
            )
          ],
        ),
      ),
    );
  }
}