import 'package:flutter/material.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({super.key});

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: DefaultTabController(
      length: 2, // Number of tabs
      child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBar(
                tabs:const  [
                  Tab(text: 'Events'),
                  Tab(text: 'Videos'),
                ],
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                labelStyle: const TextStyle(

                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                unselectedLabelStyle: const TextStyle(

                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                indicator: BoxDecoration(

                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10)// Indicator color
                  // Rounded corners
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  // Content for Tab 1
                  Center(
                    child: Text('NO EVENT AVALIABLE'),
                  ),
                  // Content for Tab 2
                  Center(
                    child: Text('NO VIDEO AVALIABLE'),
                  ),
                ],
              ),
            ),
          ],
      ),
    ),
        )
    );
  }
}
