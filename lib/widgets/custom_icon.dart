import 'package:flutter/material.dart';
class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.icon,}) : super(key: key);
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16)
      ),
      child: Center(
        child: IconButton(
          onPressed: (){},
          icon: Icon(
            icon,
            size: 28,
          ),

        ),
      ),
    );
  }
}
