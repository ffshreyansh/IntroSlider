import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment(0, 0),
                  child: Lottie.asset('lib/assets/welcome.json'),
                ),
                SizedBox(
                  height: 12,
                ),
                Center(
                    child: Text(
                  'Welcome Shreyansh!',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
