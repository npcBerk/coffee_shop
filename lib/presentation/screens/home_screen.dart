import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Flexible(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Bg(deviceWidth: deviceWidth, deviceHeight: deviceHeight),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 50, 40),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            child: Image.asset(
                              "lib/core/assets/images/img_banner.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: SizedBox(
                              width: deviceWidth/2,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 84),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                        child: Text("Hello", style: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.w600),),
                                      )) ,
                                    Container(
                                      width: 200,
                                      child: Text("Buy one get one FREE", style: TextStyle(
                                        
                                        color: Colors.white, fontSize: 32,fontWeight: FontWeight.w600),),
                                    ),
                                  ],
                                ),
                              )), 
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Container(width: deviceWidth, color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}

class Bg extends StatelessWidget {
  const Bg({super.key, required this.deviceWidth, required this.deviceHeight});

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Container(width: deviceWidth, height: deviceHeight/3, color: Colors.blue);
  }
}
