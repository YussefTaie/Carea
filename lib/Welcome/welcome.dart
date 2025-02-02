import 'package:carsapp/SharedTheams/app_colors.dart';
import 'package:carsapp/Welcome/chose_login_method.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/welcome.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.6),
            Colors.black.withOpacity(.2),
          ])),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Welcome To 👋🏻',
                  style: GoogleFonts.bebasNeue(
                      color: AppColors.White,
                      fontSize: 35,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Carea',
                  style: GoogleFonts.spectral(
                      color: AppColors.White,
                      fontSize: 80,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  margin: EdgeInsets.only(right: 20, left: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.Backgroundcolor),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                              builder: (BuildContext context) =>
                                  const ChoseLoginMethod()));
                    },
                    child: Text(
                      'START',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Manage rides, book services,\nand explore vehicles effortlessly.",
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
