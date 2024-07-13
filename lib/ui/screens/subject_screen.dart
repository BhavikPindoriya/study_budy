import 'package:flutter/material.dart';
import 'package:study_budy/data/map/interest_map.dart';
import 'package:study_budy/data/map/subject_map.dart';

class SubjectScreen extends StatefulWidget {
  const SubjectScreen({super.key});

  @override
  State<SubjectScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<SubjectScreen> {
  int itemselect = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        toolbarHeight: 120,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_new_outlined)),
        title: const Text("Subjects"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: const BoxDecoration(),
                    child: const Text("You may add more later"),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                GridView.builder(
                  physics: const ScrollPhysics(
                      parent: NeverScrollableScrollPhysics()),
                  scrollDirection: Axis.vertical,
                  itemCount: subject.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 130,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/question");
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
                            Image.asset(subject[index]["image"].toString()),
                            Text(subject[index]["title"].toString()),
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
