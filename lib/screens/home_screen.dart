import 'package:dawatulkhair/screens/about_screen.dart';
import 'package:dawatulkhair/screens/contact_screen.dart';
import 'package:dawatulkhair/screens/dashboard_screen.dart';
import 'package:dawatulkhair/screens/media_screen.dart';
import 'package:dawatulkhair/widgets/slider.dart';
import 'package:dawatulkhair/widgets/social_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    AboutScreen(),
    MediaScreen(),
    DashBoardScreen(),
    ContactScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = DashBoardScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: Container(
        width: 75,
        height: 75,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(42, 133, 63, 1),
              Color.fromARGB(234, 42, 77, 51)
            ],
          ),
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton(
          child: Icon(Icons.home),
          onPressed: () {
            setState(() {
              currentScreen = DashBoardScreen();
              currentTab = 2;
            });
          },
          backgroundColor: Colors.transparent,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 75,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                MaterialButton(
                  minWidth: 50,
                  onPressed: (() {
                    setState(() {
                      currentScreen = const AboutScreen();
                      currentTab = 0;
                    });
                  }),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: currentTab == 0
                            ? Color.fromRGBO(42, 133, 63, 1)
                            : Colors.grey,
                      ),
                      const Text(
                        "About",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 50,
                  onPressed: (() {
                    setState(() {
                      currentScreen = const MediaScreen();
                      currentTab = 1;
                    });
                  }),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.camera,
                        color: currentTab == 1
                            ? Color.fromRGBO(42, 133, 63, 1)
                            : Colors.grey,
                      ),
                      const Text(
                        "Media",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                MaterialButton(
                  minWidth: 50,
                  onPressed: (() {
                    setState(() {
                      currentScreen = ContactScreen();
                      currentTab = 2;
                    });
                  }),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        color: currentTab == 2
                            ? Color.fromRGBO(42, 133, 63, 1)
                            : Colors.grey,
                      ),
                      Text(
                        "Contact",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 50,
                  onPressed: (() {
                    setState(() {});
                  }),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.share,
                        color: currentTab == 4
                            ? Color.fromRGBO(42, 133, 63, 1)
                            : Colors.grey,
                      ),
                      const Text(
                        "Share",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
