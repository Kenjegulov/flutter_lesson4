import 'package:flutter/material.dart';
import 'package:flutter_lesson4/home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Экрандын фонуна тус беруу
      backgroundColor: Colors.amberAccent,
      // Экрандын жогорку болугу
      appBar: AppBar(
        backgroundColor: const Color(0xff056c5c),
        elevation: 15,
        title: const Center(
          child: Text(
            "Welcom to second page",
            style: TextStyle(color: Color(0xffC72127), fontSize: 40),
          ),
        ),
      ),
      body: Center(
        child: Column(
          // ортого жайгаштыруу
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'I\'m Rich',
              // Жогорку текстке шрифт беруу
              style: TextStyle(fontSize: 48, fontFamily: "Sofia-Regular"),
            ),
            SizedBox(
                width: 300,
                height: 300,
                // Суроттту жайгаштыруу
                child: Image.asset("assets/images/iamrich.png")),
          ],
        ),
      ),
    );
  }
}
