import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('lib/assets/delivery.json', width: 250),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 48.0,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Free ',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.grey[900],
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Delivery Charges',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32),
                      ),
                      TextSpan(text: ' on your first 3 orders...'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
