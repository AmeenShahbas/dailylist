import 'package:flutter/material.dart';
import 'package:flutter_application_04/onboading_screen_2.dart';
import 'package:flutter_application_04/start_screen.dart';
import 'package:flutter_svg/svg.dart';

class OnboadingScreen3 extends StatelessWidget {
  const OnboadingScreen3({super.key});

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
            SvgPicture.asset("assets/pic4.svg"),
            SizedBox(height: 64),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(height: 4, width: 26.28, color: Colors.grey),
                SizedBox(width: 10),
                Container(height: 4, width: 26.28, color: Colors.grey),
                SizedBox(width: 10),
                Container(height: 4, width: 26.28, color: Colors.white),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 50),

            Column(
              children: [
                Text(
                  "Orgonaize your tasks",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 42),
                Text(
                  "You can organize your daily tasks by adding your tasks into separate categories",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OnboadingScreen2(),
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
                            builder: (context) => StartScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff8875FF),
                        minimumSize: Size(150, 48),
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
