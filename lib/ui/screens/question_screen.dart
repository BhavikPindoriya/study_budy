import 'package:flutter/material.dart';
import 'package:study_budy/data/model/question_Model.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        leading: Image.asset("assets/png/back.png"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset("assets/png/bookmark.png"),
          ),
        ],
        title: Image.asset("assets/png/timmer.png"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //score text
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Coins :',
                        style: TextStyle(
                          color: Color.fromARGB(255, 196, 200, 207),
                        ),
                      ),
                      TextSpan(
                        text: '120',
                        style: TextStyle(
                          color: Color(0xff45536D),
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '04 /',
                        style: TextStyle(
                          color: Color(0xff45536D),
                        ),
                      ),
                      TextSpan(
                        text: '20',
                        style: TextStyle(
                            color: Color.fromARGB(255, 196, 200, 207)),
                      ),
                    ],
                  ),
                ),
                // qution
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          PageView.builder(
            itemCount: question.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 200,
                width: 200,
                child: Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      question[index]["question"].toString(),
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff45536D),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      question[index]["option1"].toString(),
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff45536D),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      question[index]["option2"].toString(),
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff45536D),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      question[index]["option3"].toString(),
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff45536D),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      question[index]["option4"].toString(),
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff45536D),
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
