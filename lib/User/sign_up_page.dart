import 'package:carsapp/Main/bottom_nav_bar.dart';
import 'package:carsapp/SharedDesignd/input_fild.dart';
import 'package:carsapp/SharedDesignd/social_media_ca.dart';
import 'package:carsapp/SharedTheams/app_colors.dart';
import 'package:carsapp/SharedWidgets/back_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.Backgroundcolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: BackBtn(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Create Accout',
              style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.Grey),
            ),
          ),
          SizedBox(height: 70),
          fild(
              controller: emailController,
              label: 'Email Addres',
              icon: Icons.email,
              textInputType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done),
          SizedBox(height: 20),
          fild(
              controller: passwordController,
              label: 'Password',
              icon: Icons.lock,
              textInputType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(3),
            margin: EdgeInsets.only(right: 25, left: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: AppColors.Grey),
            child: MaterialButton(
              minWidth: double.infinity,
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) =>
                            const BottomNavBar()));
              },
              child: Text(
                'SignUp',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Divider(
                  color: AppColors.Grey,
                  thickness: 0.5,
                  endIndent: 20,
                  indent: 20),
              Text('Or Continue With',
                  style: GoogleFonts.poppins(
                      color: AppColors.Grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14)),
              Divider(
                  color: AppColors.Grey,
                  thickness: 0.5,
                  endIndent: 20,
                  indent: 20),
            ],
          ),
          SocialMediaCa()
        ],
      ),
    );
  }
}
