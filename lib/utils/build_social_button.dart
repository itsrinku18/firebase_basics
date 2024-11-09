import 'package:flutter/material.dart';

class BuildSocialButton extends StatelessWidget {
  late String imagePath;
  late VoidCallback? onTap;

  BuildSocialButton({required this.imagePath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,

      ),
      onPressed: () {
        onTap;
      },
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Image.asset(imagePath,width: 30,height: 30,),
      ),
    );
  }
}