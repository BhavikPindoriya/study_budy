import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:study_budy/ui/colors/colors.dart';
import 'package:study_budy/ui/screens/interest_screen.dart';
import 'package:study_budy/ui/screens/onbording_first.dart';
import 'package:study_budy/ui/screens/onbording_second.dart';
import 'package:study_budy/ui/screens/question_screen.dart';
import 'package:study_budy/ui/screens/subject_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return DevicePreview(
        enabled: true,
        builder: (context) {
          return Container(
            child: Builder(builder: (context) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(
                    primaryColor: primarycolor,
                    scaffoldBackgroundColor: scaffoldbackgroundcolor,
                    useMaterial3: true,
                    colorScheme: ColorScheme.fromSeed(seedColor: primarycolor)
                        .copyWith(secondary: secondorycolor)),
                routes: {
                  "/": (context) => const OnbordingFirst(),
                  "/onbordingSecond": (context) => const OnbordingSecond(),
                  "/interest": (context) => const InterestScreen(),
                  "/subject": (context) => const SubjectScreen(),
                  "/question": (context) => const QuestionScreen()
                },
              );
            }),
          );
        });
  }
}
