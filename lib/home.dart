import 'package:flutter/material.dart';
import 'package:flutter_lesson4/secondPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  bool isActive = false;
  String? phoneNumber = "";
  String? email = "";
  void ready() {
    // phoneNumber and email isEmpty болбосо IsActivate false болсун
    if (phoneNumber!.isEmpty || email!.isEmpty) {
      isActive = false;
    } else {
      isActive = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold бул бош экран
    return Scaffold(
      backgroundColor: const Color(0xff056c5c),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
          "Тапшырма 4",
          style: TextStyle(
            color: Colors.black,
          ),
        )),
        // Колокосу жок(0)
        elevation: 0,
      ),
      // Баракчанын тулкусу(денеси)
      body: Center(
        // Тулкусун ортосуна жайгаштыруу
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const CircleAvatar(
              radius: 150,
              backgroundImage:
                  NetworkImage('https://picsum.photos/250?image=9')),
          const Text(
            "Arsen Kenjegulov",
            style: TextStyle(
                fontSize: 48,
                // Pacifico-Regular деген шрифт беруу
                fontFamily: "Pacifico-Regular",
                color: Color(0xffF7F9F9)),
          ),
          const Text(
            "Flutter Developer",
            style: TextStyle(fontSize: 28, color: Color(0xffF7F9F9)),
          ),
          // Туз сызык чийуу
          const Divider(
            // аны башынан жагынан туртуу
            indent: 57,
            // Бийиктиги
            height: 0,
            // колокосу
            thickness: 2,
            color: Colors.white,
            // аны аягынан жагынан туртуу
            endIndent: 47.5,
          ),
          // Текст менен контейнердин орторсундагы аралык
          const SizedBox(
            height: 23.5,
          ),
          Container(
            color: Colors.white,
            // Текст жазууга поля
            child: TextFormField(
              // Жазылуучу тексттин тусу жана чондугу
              style: const TextStyle(
                fontSize: 20,
                color: Color(0xff056c5c),
                fontWeight: FontWeight.w600,
              ),
              // Жазылган маалыматты phoneNumberге сактоо
              onChanged: (String? value) {
                phoneNumber = value;
                // Функцияны чакыруу
                ready();
              },
              decoration: const InputDecoration(
                // Жардамчы текст
                hintText: "Your phone",
                focusColor: Colors.white,
                // Иконка чыгаруу жана аны жайгаштыруу
                prefixIcon: Padding(
                  // Симметриялуу вертикалдык жана горизонталдык туртуу
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Icon(
                    Icons.phone_outlined,
                    color: Color(0xff056C5C),
                    size: 45,
                  ),
                ),
              ),
            ),
          ),
          // Эки контейнердин ортосундагы аралык
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            // Текст жазууга поля
            child: TextFormField(
              // Жазылуучу тексттин тусу жана чондугу
              style: const TextStyle(
                fontSize: 20,
                color: Color(0xff056c5c),
                fontWeight: FontWeight.w600,
              ),
              // Жазылган маалыматты emailге сактоо
              onChanged: (String? value) {
                setState(() {
                  email = value;
                });
                // Функцияны чакыруу
                ready();
              },
              decoration: const InputDecoration(
                // Жардамчы текст
                hintText: "Your email",
                focusColor: Colors.white,
                // Иконка чыгаруу жана аны жайгаштыруу
                prefixIcon: Padding(
                  // Симметриялуу вертикалдык жана горизонталдык туртуу
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Icon(
                    Icons.email_outlined,
                    color: Color(0xff056C5C),
                    size: 45,
                  ),
                ),
              ),
            ),
          ),
          // Контейнер менен кнопканын ортосундагы аралык
          const SizedBox(
            height: 20,
          ),
          // Кнопка жаратуу
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                // кырынын калындыгы жана тусу
                side: const BorderSide(width: 2, color: Colors.black),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15)),
            onPressed: isActive
                ? () {
                    // Навигация кийинки бетке
                    if (phoneNumber == "0706484681" &&
                        email == "arsen.kenjeguov.bj@gmail.com") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              // Экинчи баракты чакыруу
                              builder: (context) => const SecondPage()));
                    } else {
                      print("Сиздин login же email туур эмес!!!");
                    }
                  }
                : null,
            child: const Text("Sign in"),
          ),
        ]),
      ),
    );
  }
}
