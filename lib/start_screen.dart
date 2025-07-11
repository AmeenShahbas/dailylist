import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,iconTheme: IconThemeData(color: Colors.white),),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Welcome to UpTodo",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 26),
          Center(
            child: Text(
              "Please login to your account or create new account to continue",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),SizedBox(height: 370,),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "LOGINE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff8875FF),
                  minimumSize: Size(327, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                
              ),
              SizedBox(height: 28,),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "CREATE ACCOUNT",
                  
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    
                  ),
                ),
                
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black,minimumSize: Size(327, 48),
                side: BorderSide(color: Color(0xff8E7CFF),width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                )),
                
                

              ),
            ],
          ),
        ],
      ),
    );
  }
}
