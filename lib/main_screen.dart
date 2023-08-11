import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Main_screen extends StatelessWidget {
  const Main_screen({super.key});
  //static String routeName = '/mainpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Details',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              //     padding: EdgeInsets.all(30),
              height: 200,
              width: 400,
              child: Text(''),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/cff.png'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.centerLeft,
            child: Text(
              'Cappuchino',
              style: GoogleFonts.dosis(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            alignment: Alignment.centerLeft,
            child: Text(
              'with Chocolate',
              style: GoogleFonts.dosis(
                color: Colors.black,
                fontSize: 15,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const SizedBox(
                width: 17,
              ),
              const Icon(
                Icons.star,
                color: Colors.orange,
              ),
              const SizedBox(
                width: 7,
              ),
              const Text(
                '4.8',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              const Text(
                '   (254)',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              SizedBox(
                width: 150,
              ),
              Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/bean.png'))),
                child: Text(''),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/llact.png'))),
                child: Text(''),
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: Container(
              height: 2,
              width: double.infinity,
              child: Text(''),
              decoration:
                  BoxDecoration(color: Color.fromARGB(112, 179, 178, 178)),
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.centerLeft,
            child: Text(
              'Description',
              style: GoogleFonts.satisfy(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.centerLeft,
            child: Text(
              'This A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elements into equal thirds.',
              style: GoogleFonts.alegreya(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Size',
              style: GoogleFonts.overpass(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              sizes(size: 'S', bdcolor: Colors.black, bgcolor: Colors.white),
              sizes(size: 'M', bdcolor: Colors.white, bgcolor: Colors.black),
              sizes(size: 'L', bdcolor: Colors.black, bgcolor: Colors.white)
            ],
          ),
          const SizedBox(
            height: 48,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '\$6.45',
                style: GoogleFonts.teko(color: Colors.black, fontSize: 28),
              ),
              Container(
                height: 74,
                width: 230,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                    child: Text(
                  'Buy Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                )),
              )
            ],
          )
        ],
      ),
    );
  }
}

class sizes extends StatelessWidget {
  const sizes({
    super.key,
    required this.size,
    required this.bdcolor,
    required this.bgcolor,
  });
  final String size;
  final Color bdcolor;
  final Color bgcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 97,
      decoration: BoxDecoration(
          border: Border.all(color: bdcolor),
          borderRadius: BorderRadius.circular(30),
          color: bgcolor),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: bdcolor,
          ),
        ),
      ),
    );
  }
}
