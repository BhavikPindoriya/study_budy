import 'package:flutter/material.dart';
import 'package:study_budy/data/map/interest_map.dart';

class InterestScreen extends StatefulWidget {
  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  int itemselect = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        toolbarHeight: 120,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_new_outlined)),
        title: const Text("Exam"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: const BoxDecoration(),
                  child: const Text("Chose your Exam")),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            GridView.builder(
              itemCount: insterest.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 130,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/subject");

                    setState(() {
                      itemselect = index;
                    });
                    print("index$itemselect");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: itemselect == index
                          ? Border.all(
                              color: Colors.amber,
                            )
                          : Border.all(
                              color: Colors.white,
                            ),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 3,
                          spreadRadius: 1,
                          offset: Offset(1, 2),
                          color: Colors.grey,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(insterest[index]["image"].toString()),
                        Text(insterest[index]["title"].toString()),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
