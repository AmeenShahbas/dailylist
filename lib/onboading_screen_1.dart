import 'package:flutter/material.dart';
import 'package:flutter_application_04/onboading_screen_2.dart';
import 'package:flutter_application_04/splash_screen.dart';
import 'package:flutter_application_04/start_screen.dart';
import 'package:flutter_svg/svg.dart';

class OnboadingScreen1 extends StatelessWidget {
  const OnboadingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 34, top: 60)),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StartScreen()),
                    );
                  },
                  child: Text(
                    "SKIP",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SvgPicture.asset("assets/pic2.svg"),
            SizedBox(height: 51.22),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(height: 4, width: 26.28, color: Colors.white),
                SizedBox(width: 10),
                Container(height: 4, width: 26.28, color: Colors.grey),
                SizedBox(width: 10),
                Container(height: 4, width: 26.28, color: Colors.grey),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 50),

            Column(
              children: [
                Text(
                  "Manage Your Tasks",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 42),
                Text(
                  "You can easily manage all of your daily task in DoMe for free",

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SplashScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "BACK",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 180, width: 180),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => (OnboadingScreen2()),
                          ),
                        );
                      },
                      child: Text(
                        "NEXT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff8875FF),
                        minimumSize: Size(90, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
