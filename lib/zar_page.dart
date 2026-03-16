import 'dart:math';
import 'package:flutter/material.dart';
import 'buton_widget.dart';


class Zar_page extends StatefulWidget {
  const Zar_page({super.key});

  @override
  State<Zar_page> createState() => _Zar_pageState();
}
class _Zar_pageState extends State<Zar_page> {
  int zar1 = 1;
  int zar2 = 1;
  int zar3 = 1;
  Random random = Random();

  void zarAt() {
    setState(() {
      zar1 = random.nextInt(6) + 1;
      zar2 = random.nextInt(6) + 1;
      zar3 = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '3 Zar Atışı',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
              const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset('asset/images/zar$zar1.png', width: 100, height: 100),
                  const SizedBox(width: 20),
                Image.asset('asset/images/zar$zar2.png', width: 100, height: 100),
                const SizedBox(width: 20),
                Image.asset('asset/images/zar$zar3.png', width: 100, height: 100),
              ],
            ),
            const SizedBox(height: 30),
            CustomButton.SbtColor(
              text: 'Sayı Üretmek İçin Tıklayın',
              onPressed: zarAt,
            ),
          ],
        ),
      ),
    );
  }
}