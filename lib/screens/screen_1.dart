import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('lib/assets/burger.json', width: 250),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 48.0,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Awesome ',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.grey[900],
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Burger',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32),
                      ),
                      TextSpan(
                          text: ' in town on your doorsteps in no time...'),
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
