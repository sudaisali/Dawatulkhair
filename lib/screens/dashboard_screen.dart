import 'package:dawatulkhair/widgets/books.dart';
import 'package:flutter/material.dart';

import '../widgets/slider.dart';
import '../widgets/social_icons.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/back2.png', // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.all(10),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const SizedBox(
                        height: 15,
                      ),
                      MyCarousel(),
                      SocialMedia(),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Books",
                        style: TextStyle(
                            fontSize: 29,
                            fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(42, 133, 63, 1)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: BooksView(),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
