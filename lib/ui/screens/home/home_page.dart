import 'package:flutter/material.dart';
import 'package:study_budy/ui/screens/home/book_screen.dart';
import 'package:study_budy/ui/screens/home/home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
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
        onPressed: () {
          setState(() {
            int nextPage = (pageController.page?.toInt() ?? 0) + 1;
            if (nextPage >= 4) {
              nextPage = 0;
            }
            pageController.jumpToPage(nextPage);
          });
        },
        child: Center(
          child: Image.asset(
              "assets/png/messages icon.png"), // Ensure the correct path
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        color: Theme.of(context).colorScheme.primary,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildBottomNavigationBarItem(
              "assets/png/home_bottom.png",
              "Home",
              0,
            ),
            _buildBottomNavigationBarItem(
              "assets/png/book_icon.png",
              "Books",
              1,
            ),
            _buildBottomNavigationBarItem(
              "assets/png/study_icon.png",
              "Planner",
              2,
            ),
            _buildBottomNavigationBarItem(
              "assets/png/menu_icon.png",
              "Menu",
              3,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBarItem(
      String iconPath, String label, int pageIndex) {
    return GestureDetector(
      onTap: () {
        setState(() {
          pageController.jumpToPage(pageIndex);
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(iconPath, width: 24, height: 24),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
