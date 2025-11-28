import 'package:flutter/material.dart';
import 'package:learnova/Utils/StaticString/static_string.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  int selected = 0; // 0 = Student, 1 = Teacher

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),

      body: Column(
        children: [
          Image(
            image: AssetImage("assets/images/Group 1000007613.png"),
            height: 233,
            width: 430,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.center,
            child: Text(
              AppString.logIn,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color(0xff1F1F1F),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// STUDENT
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = 0;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      "Student",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: selected == 0
                            ? Color(0xff023F86)
                            : Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5),

                    /// underline only under this item
                    AnimatedContainer(
                      duration: Duration(milliseconds: 250),
                      height: 2,
                      width: selected == 0 ? 70 : 0,
                      color: Color(0xff023F86),
                    ),
                  ],
                ),
              ),

              SizedBox(width: 40),

              /// TEACHER
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = 1;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      "Teacher",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: selected == 1
                            ? Color(0xff023F86)
                            : Colors.grey,
                      ),
                    ),

                    SizedBox(height: 5),

                    AnimatedContainer(
                      duration: Duration(milliseconds: 250),
                      height: 2,
                      width: selected == 1 ? 70 : 0,
                      color: Color(0xff023F86),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
