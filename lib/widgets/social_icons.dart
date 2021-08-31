import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final List<Color> colors;
  final Icon icon;
  final void  onPressed;

  SocialIcon({
    required this.colors,
    required this.icon,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.0),
      child: Container(
          width: 45.0,
          height: 45.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: colors,
              )
          ),
          child: RawMaterialButton(
              shape: CircleBorder(),
              onPressed: ()=>onPressed,
              child: icon,
          )
      ),
    );
  }
}