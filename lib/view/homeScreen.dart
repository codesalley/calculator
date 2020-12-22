import 'package:calculator/components/numberCard.dart';
import 'package:calculator/controllers/calculatorController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final conreoller = Get.put(CalculatorController());
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: StreamBuilder<Object>(builder: (context, snapshot) {
            return Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height * 0.5,
                  padding: EdgeInsets.only(
                    bottom: height * 0.05,
                    left: height * 0.05,
                    right: height * 0.05,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [Obx(() => Text('${conreoller.input}'))],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  // height: height / 1.5,
                  child: Obx(
                    () => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: NumberCard(
                                width: 70,
                                number: 'AC',
                              ),
                            ),
                            NumberCard(
                              width: 70,
                              number: '+/-',
                            ),
                            NumberCard(
                              width: 70,
                              number: '%',
                            ),
                            NumberCard(
                              width: 70,
                              number: '/',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                conreoller.input.add(22);
                              },
                              child: NumberCard(
                                width: 70,
                                number: '7',
                              ),
                            ),
                            NumberCard(
                              width: 70,
                              number: '8',
                            ),
                            NumberCard(
                              width: 70,
                              number: '9',
                            ),
                            NumberCard(
                              width: 70,
                              number: 'x',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            NumberCard(
                              width: 70,
                              number: '4',
                            ),
                            NumberCard(
                              width: 70,
                              number: '5',
                            ),
                            NumberCard(
                              width: 70,
                              number: '6',
                            ),
                            NumberCard(
                              width: 70,
                              number: '-',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            NumberCard(
                              width: 150,
                              number: '+',
                            ),
                            // NumberCard(width: 70),
                            NumberCard(
                              width: 70,
                              number: '.',
                            ),
                            NumberCard(
                              width: 70,
                              number: '=',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
