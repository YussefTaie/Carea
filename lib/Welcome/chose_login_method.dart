import 'package:carsapp/SharedTheams/app_colors.dart';
import 'package:carsapp/SharedWidgets/back_btn.dart';
import 'package:carsapp/User/sign_in_page.dart';
import 'package:carsapp/User/sign_up_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoseLoginMethod extends StatefulWidget {
  const ChoseLoginMethod({super.key});

  @override
  State<ChoseLoginMethod> createState() => _ChoseLoginMethodState();
}

class _ChoseLoginMethodState extends State<ChoseLoginMethod> {
  List socialmedia = [
    {'name': 'Facebook', 'image': 'assets/images/facebook.png'},
    {'name': 'Google', 'image': 'assets/images/google.png'},
    {'name': 'Apple', 'image': 'assets/images/apple-logo.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Backgroundcolor,
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          ListTile(
            leading: BackBtn(),
          ),
          SizedBox(
            height: 250,
          ),
          Column(
            children: [
              for (int i = 0; i < socialmedia.length; i++)
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 70,
                      width: 400,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Color(0xff2F3645)),
                        child: Center(
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 75)),
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 16,
                                backgroundImage:
                                    AssetImage(socialmedia[i]['image']),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                'Continue With ${socialmedia[i]['name']}',
                                style: GoogleFonts.poppins(
                                  color: AppColors.White,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(
            height: 50,
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
              Text('Or',
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
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(3),
            margin: EdgeInsets.only(right: 35, left: 35),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: AppColors.Grey),
            child: MaterialButton(
              minWidth: double.infinity,
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => const SignInPage()));
              },
              child: Text(
                'Login With Email',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (BuildContext context) => const SignUpPage()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'If you don\'t have an account ',
                  style: GoogleFonts.poppins(
                      color: AppColors.Grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                Text(
                  'Signup',
                  style: GoogleFonts.poppins(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


/*

git add --all

git commit -m "ChoseLoginMethod widget"

git push -u origin main

*/