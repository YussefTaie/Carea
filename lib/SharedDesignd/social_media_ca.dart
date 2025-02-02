import 'package:flutter/material.dart';

class SocialMediaCa extends StatefulWidget {
  const SocialMediaCa({super.key});

  @override
  State<SocialMediaCa> createState() => _SocialMediaCaState();
}

class _SocialMediaCaState extends State<SocialMediaCa> {
  List socialmedia = [
    {'image': 'assets/images/facebook.png'},
    {'image': 'assets/images/google.png'},
    {'image': 'assets/images/apple-logo.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < socialmedia.length; i++)
          Padding(
            padding: const EdgeInsets.only(top: 40.0, right: 12.0),
            child: InkWell(
              onTap: () {},
              child: SizedBox(
                height: 70,
                width: 70,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xff2F3645)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 18,
                          backgroundImage: AssetImage(socialmedia[i]['image']),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
