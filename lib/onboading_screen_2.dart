import 'package:flutter/material.dart';
import 'package:flutter_application_04/onboading_screen_1.dart';
import 'package:flutter_application_04/onboading_screen_3.dart';
import 'package:flutter_application_04/start_screen.dart';
import 'package:flutter_svg/svg.dart';

class OnboadingScreen2 extends StatelessWidget {
  const OnboadingScreen2({super.key});

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
            SvgPicture.asset("assets/pic3.svg"),
            SizedBox(height: 42),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(height: 4, width: 26.28, color: Colors.grey),
                SizedBox(width: 10),
                Container(height: 4, width: 26.28, color: Colors.white),
                SizedBox(width: 10),
                Container(height: 4, width: 26.28, color: Colors.grey),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 50),

            Column(
              children: [
                Text(
                  "Create daily routine",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 42),
                Text(
                  "In Uptodo  you can create your personalized routine to stay productive",
                  textAlign: TextAlign.center,
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
                            builder: (context) => OnboadingScreen1(),
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
                            builder: (context) => OnboadingScreen3(),
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
