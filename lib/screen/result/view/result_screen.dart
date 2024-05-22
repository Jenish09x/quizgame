import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../home/controller/home_controller.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    var w = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/image/Group 16.png",
                  height: h * 0.40,
                ),
              ),
              Align(
                alignment: const Alignment(0, -0.15),
                child: Container(
                  height: h * 0.21,
                  width: w * 0.81,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          color: Color(0xffFBECFF),
                          blurStyle: BlurStyle.outer)
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "100%",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: "sans",
                              color: Color(0xffA42FC1),
                            ),
                          ),
                          const Text(
                            "Completion",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "sans",
                            ),
                          ),
                          SizedBox(
                            height: h * 0.08,
                          ),
                          Text(
                            "${controller.checkAns.value}",
                            style: const TextStyle(
                              fontSize: 15,
                              fontFamily: "sans",
                              color: Color(0xffA42FC1),
                            ),
                          ),
                          const Text(
                            "Correct",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "sans",
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "10",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: "sans",
                              color: Color(0xffA42FC1),
                            ),
                          ),
                          const Text(
                            "Total Question",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "sans",
                            ),
                          ),
                          SizedBox(
                            height: h * 0.08,
                          ),
                          const Text(
                            "07",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: "sans",
                              color: Color(0xffA42FC1),
                            ),
                          ),
                          const Text(
                            "Wrong",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "sans",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0, 0.40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.index.value=0;
                        controller.checkAns.value=0;
                        Get.offAllNamed("home");
                        controller.randomList.value =[];
                        // controller.quizData();
                      },
                      child: Container(
                        height: h * 0.05,
                        width: w * 0.30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.restart_alt,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              "Play Again",
                              style:
                                  TextStyle(fontFamily: "sans", fontSize: 15,color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: h * 0.05,
                      width: w * 0.30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            "Home",
                            style:
                                TextStyle(fontFamily: "sans", fontSize: 15,color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
