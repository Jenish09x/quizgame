import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:quizgame/screen/home/controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  // CountDownController countDownController =CountDownController();

  @override
  void initState() {
    super.initState();
    controller.quizData();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    var w = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        body: Obx(
                () => controller.randomList.value == null||controller.randomList.value!.isEmpty
                    ? const Center(
                  child: CircularProgressIndicator(),
                )
                    : Padding(
                  padding: const EdgeInsets.all(10),
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          "assets/image/Group 14.png",
                          height: h * 0.27,
                        ),
                      ),
                      //  Align(
                      //   alignment: const Alignment(0,0),
                      //   child: CircularCountDownTimer(
                      //       width: 60,
                      //       height: 60,
                      //       isReverse: true,
                      //       autoStart: true,
                      //       isReverseAnimation: true,
                      //       initialDuration: 0,
                      //       isTimerTextShown: true,
                      //       duration: 20,
                      //       fillColor: Colors.purple,
                      //       controller: countDownController,
                      //       // onChange: (value) {
                      //       //   controller.Index.value++;
                      //       // },
                      //       ringColor: const Color(0xffFBECFF)),
                      // ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 70,),
                          Container(
                            height: h * 0.21,
                            width: w * 0.81,
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
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                const Text(
                                  "Question",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "sans",
                                    color: Color(0xffA42FC1),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "${controller.randomList.value![controller.index.value].question}",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontFamily: "sans",
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 45,),
                          InkWell(
                            onTap: () {
                              controller.index++;
                              if( controller.randomList.value![controller.index.value].correct_answer==controller.randomList.value![controller.index.value].option![0])
                                {
                                 controller.checkAns++;
                                }
                              else if(controller.index.value==9)
                                {
                                  print(controller.checkAns.value);
                                  Get.toNamed("result");
                                }
                            },
                            child: ansTile(h, w,
                                "${controller.randomList.value![controller.index.value].option![0]}"),
                          ),
                          InkWell(
                            onTap: () {
                              controller.index++;
                              if( controller.randomList.value![controller.index.value].correct_answer==controller.randomList.value![controller.index.value].option![1])
                              {
                                controller.checkAns++;
                              }
                              else if(controller.index.value==9)
                              {
                                print(controller.checkAns.value);

                                Get.toNamed("result");
                              }
                            },
                            child: ansTile(h, w,
                                "${controller.randomList.value![controller.index.value].option![1]}"),
                          ),
                          InkWell(
                            onTap: () {
                              controller.index++;
                              if( controller.randomList.value![controller.index.value].correct_answer==controller.randomList.value![controller.index.value].option![2])
                              {
                                controller.checkAns++;
                              }
                              else if(controller.index.value==9)
                              {
                                print(controller.checkAns.value);

                                Get.toNamed("result");
                              }
                            },
                            child: ansTile(h, w,
                                "${controller.randomList.value![controller.index.value].option![2]}"),
                          ),
                          InkWell(
                            onTap: () {
                              controller.index++;
                              if( controller.randomList.value![controller.index.value].correct_answer==controller.randomList.value![controller.index.value].option![3])
                              {
                                controller.checkAns++;
                              }
                              else if(controller.index.value==9)
                              {
                                print(controller.checkAns.value);

                                Get.toNamed("result");
                              }
                            },
                            child: ansTile(h, w,
                                "${controller.randomList.value![controller.index.value].option![3]}"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  Container ansTile(double h, double w, String ans) {
    return Container(
      height: h * 0.07,
      width: w * 0.75,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.purple),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [Text(ans)],
      ),
    );
  }
}
