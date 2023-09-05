import 'package:flutter/material.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({super.key});

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Social Media Accounts",
          style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.w900,
              color: Color.fromRGBO(42, 133, 63, 1)),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                    width: 60,
                    height: 60,
                    child: const Image(
                        image: AssetImage('assets/images/fbook.png'))),
                const SizedBox(
                  height: 7,
                ),
                const Text("FaceBook")
              ],
            ),
            Column(
              children: [
                Container(
                    width: 60,
                    height: 60,
                    child: const Image(
                        image: AssetImage('assets/images/instagram.png'))),
                const SizedBox(
                  height: 7,
                ),
                const Text("Instagram")
              ],
            ),
            Column(
              children: [
                Container(
                    width: 60,
                    height: 60,
                    child: const Image(
                        image: AssetImage('assets/images/youtube.png'))),
                const SizedBox(
                  height: 7,
                ),
                const Text("Youtube")
              ],
            ),
            Column(
              children: [
                Container(
                    width: 60,
                    height: 60,
                    child: const Image(
                        image: AssetImage('assets/images/twitter.png'))),
                const SizedBox(
                  height: 7,
                ),
                const Text("Twitter")
              ],
            ),
            Column(
              children: [
                Container(
                    width: 60,
                    height: 60,
                    child: const Image(
                        image: AssetImage('assets/images/whatsapp.png'))),
                const SizedBox(
                  height: 7,
                ),
                const Text("Whatsapp")
              ],
            ),
          ],
        )
      ],
    );
  }
}
