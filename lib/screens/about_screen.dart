import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(height: 10,),
              Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.green,
                    width: 2.0,
                  ),
                ),
                child: const ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/aboutimg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Text("Sirikot Sharif Introduction" , style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(42, 133, 63, 1),
              ),),
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text("Sirikot is in tehsil Ghazi but in west of tehsil Haripur there is another very beautiful & largely populated home village of Mashwani’s known as Gudwalian(Goodvally),located on the way while going from haripur to Sirikot(Ghazi). Almost 12-14 km from Haripur."
                    "\n'\nThe city of Haripur is situated in the front of these mountains towards East and on West the glorious Indus River is flowing. In South, it is touching the Tarbela Dam and in North it touch Hasanabdal. There are various tribes living on these mountains, specially Mashwani,s at the top of the hill Sirikot.",
                style: TextStyle(
                  fontSize: 18
                ),),
              )

            ],
          ),
        ),
      ),
    );
  }
}
