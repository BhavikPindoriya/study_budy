import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:study_budy/data/map/onbordind_map.dart';

import '../widget/custom_button.dart';

class OnbordingFirst extends StatefulWidget {
  const OnbordingFirst({super.key});

  @override
  State<OnbordingFirst> createState() => _OnbordingFirstState();
}

class _OnbordingFirstState extends State<OnbordingFirst> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/png/Background.png"),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.centerLeft,
                colors: [
                  Color.fromARGB(255, 253, 200, 6),
                  Color.fromARGB(255, 245, 143, 11)
                ],
              ),
            ),
          ),
          // illustration image
          Positioned(
            top: MediaQuery.of(context).padding.top + 100,
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/png/Illustration.png"),
                ),
              ),
            ),
          ),
          // dote image
          Positioned(
            top: MediaQuery.of(context).padding.top - 10,
            left: MediaQuery.of(context).padding.left - 90,
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/png/Dots.png"),
                ),
              ),
            ),
          ),
          //back icon
          Positioned(
            top: MediaQuery.of(context).padding.top + 20,
            left: MediaQuery.of(context).padding.left + 30,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
              child: const Icon(Icons.arrow_back_ios_new),
            ),
          ),
          // welcome text
          Positioned(
            top: MediaQuery.of(context).padding.top + 400,
            left: MediaQuery.of(context).padding.left + 20,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 1,
              child: PageView.builder(
                itemCount: onbording.length,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                    print(value);
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          onbording[index]['title'].toString(),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text(
                          onbording[index]['subtitle'].toString(),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Container(
                        child: Text(
                          onbording[index]['description'].toString(),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text(
                          onbording[index]['subdescription'].toString(),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          // dot indicator
          Positioned(
            top: MediaQuery.of(context).padding.top + 500,
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: onbording.length,
                itemBuilder: (context, index) {
                  print("dot indicator $currentIndex");
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.02,
                    width: MediaQuery.of(context).size.width * 0.02,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color:
                          currentIndex == index ? Colors.amber : Colors.white,
                      // color: Colors.red,
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 3,
                          spreadRadius: 1,
                          offset: Offset(1, 2),
                          color: Colors.grey,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          //button
          Positioned(
            top: MediaQuery.of(context).padding.top + 600,
            left: MediaQuery.of(context).padding.left + 30,
            right: MediaQuery.of(context).padding.left + 30,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/onbordingSecond");
              },
              child: CustomButton(
                image: Image.asset("assets/png/Login.png"),
                name: "Study Buddy",
              ),
            ),
          )
        ],
      ),
    );
  }
}
