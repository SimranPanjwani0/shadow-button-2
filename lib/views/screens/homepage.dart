import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "A Shadow Button",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff009688),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print("Taped!!!");
          },
          child: Ink(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff009688),
                    blurRadius: 20,
                    offset: Offset(-5, -5),
                  ),
                  BoxShadow(
                    color: Color(0xff009688),
                    blurRadius: 20,
                    offset: Offset(5, 5),
                  ),
                  BoxShadow(
                    color: Color(0xff009688),
                    blurRadius: 20,
                    offset: Offset(5, -5),
                  ),
                  BoxShadow(
                    color: Color(0xff009688),
                    blurRadius: 20,
                    offset: Offset(-5, 5),
                  ),
                ]),
            child: Container(
              height: h * 0.1,
              width: w * 0.5,
              alignment: Alignment.center,
              child: Text(
                "Tap",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
