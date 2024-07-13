import 'package:flutter/material.dart';
import 'package:study_budy/ui/screens/home/book_screen.dart';
import 'package:study_budy/ui/screens/home/home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(initialPage: 0);
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const <Widget>[
          Center(child: HomeScreen()),
          Center(
            child: BookScreen(),
          ),
          Center(child: Text("Study Planner")),
          Center(child: Text("Menu")),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: const CircleBorder(),
        onPressed: () {},
        child: Center(
          child: Image.asset("assets/png/messages icon.png"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onTap: (value) {
          setState(() {
            pageController.jumpToPage(value);
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: "Books",
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "Study Planner",
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "Menu",
            backgroundColor: Colors.amber,
          )
        ],
      ),

      // bottomNavigationBar: BottomAppBar(
      //   shape: const CircularNotchedRectangle(),
      //   notchMargin: 5.0,
      //   color: Theme.of(context).colorScheme.primary,
      //   child: Row(
      //     mainAxisSize: MainAxisSize.max,
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: <Widget>[
      //       IconButton(
      //         icon: const Icon(Icons.home),
      //         onPressed: () {
      //           setState(() {});
      //         },
      //       ),
      //       IconButton(
      //         icon: const Icon(Icons.search),
      //         onPressed: () {
      //           setState(() {});
      //         },
      //       ),
      //       IconButton(
      //         icon: const Icon(Icons.favorite_border_outlined),
      //         onPressed: () {
      //           setState(() {});
      //         },
      //       ),
      //       IconButton(
      //         icon: const Icon(Icons.account_circle_outlined),
      //         onPressed: () {
      //           setState(() {});
      //         },
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
