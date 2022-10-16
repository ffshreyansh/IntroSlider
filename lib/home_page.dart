import 'package:flutter/material.dart';
import 'package:slider_app/screens/screen_1.dart';
import 'package:slider_app/screens/screen_2.dart';
import 'package:slider_app/screens/screen_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'main_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //controller tracking pages
  PageController _controller = PageController();

  //if we are on last page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: AlwaysScrollableScrollPhysics(),
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              ScreenOne(),
              ScreenTwo(),
              ScreenThree(),
            ],
          ),
          //smooth dot indicators

          Container(
            decoration: BoxDecoration(),
            alignment: Alignment(0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Skip Button
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),

                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: SlideEffect(
                      dotColor: Colors.white,
                      dotWidth: 12.0,
                      dotHeight: 12.0,
                      activeDotColor: Colors.grey.shade800),
                ),

                //Next or Done button
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return MainPage();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Done',
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
