import 'package:coffee/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StarterPage extends StatefulWidget {
  const StarterPage({super.key});

  //static String routeName = '/starterpage';

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            //fit: BoxFit.cover,
            image: AssetImage(
              'assets/image2.png',
            ),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            const LargeText(text: 'PERFECT BLEND'),
            const LargeText(text: 'FOR YOUR'),
            const LargeText(text: 'TASTE BUDS'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'The best grain, he finest roast, the most powerful flavor',
                style: GoogleFonts.pacifico(
                    // fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 400,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Main_screen())));
                //    Navigator.pushNamed(context, Main_screen.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  //padding: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Center(
                      child: Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}

class LargeText extends StatelessWidget {
  const LargeText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(text,
            style: GoogleFonts.bebasNeue(
                fontSize: 55,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
