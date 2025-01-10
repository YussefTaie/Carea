import 'package:flutter/material.dart';

class BackBtn extends StatefulWidget {
  const BackBtn({super.key});

  @override
  State<BackBtn> createState() => _BackBtnState();
}

class _BackBtnState extends State<BackBtn> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.arrow_back_ios_rounded,
                  color: Colors.white, size: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}
