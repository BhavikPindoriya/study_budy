import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, BoxConstraints Constraints) {
        double height = Constraints.maxHeight;
        double width = Constraints.maxWidth;
        return SafeArea(
          child: Container(
            height: height * 0.2,
            width: width * 0.2,
            color: Colors.amber,
            child: const Column(
              children: [
                Text("hellllllllllllllll"),
                Text("hellllllllllllllll"),
                Text("hellllllllllllllll"),
              ],
            ),
          ),
        );
      }),
    );
  }
}
