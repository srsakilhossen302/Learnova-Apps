import 'package:flutter/material.dart';
import 'package:learnova/Utils/StaticString/static_string.dart';
import 'package:learnova/View/Screen/Student%20_Log_In/LoginPageController.dart';
import 'package:learnova/View/Widgegt/CustomButton.dart';
import 'package:learnova/View/Widgegt/CustomTextField.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final LoginPageController controller = LoginPageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int selected = 0;

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

          SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: CustomTextField(
              label: AppString.email,
              hint: "johndoe@gmail.com",
              controller: controller.emailController,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 8),
            child: CustomTextField(
              label: AppString.password,
              hint: "Enter your password",
              isPassword: true,
              controller: controller.passController,
            ),
          ),

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 20),
                GestureDetector(
                  onTap: (){


                  },
                  child: Text(
                    AppString.forgotPassword,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff008DE7)
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),

          CustomButton(
            onTap: (){

            },
            width: 390,
            height: 56,
            text: AppString.logIn,
            color:  Color(0xff023F86),
            textStyle: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),

          SizedBox(height: 40),

          CustomButton(
            onTap: (){

            },
            width: 390,
            height: 56,
            border: Border.all(color: Color(0xff7B828A), width: 1),
            imagePath: "assets/images/Google.png",
            text: AppString.loginWithGoogle,
            color:  Color(0xffFFFFFF),
            textStyle: TextStyle(
              color: Color(0xff363636),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),


        ],
      ),
    );
  }
}
