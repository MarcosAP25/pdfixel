import 'package:flutter/material.dart';

class CustomLargeButton extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final Function()? onPressed;
  final Color? backgroundColor;
  final TextStyle titleStyle;
  const CustomLargeButton({super.key, this.title, this.icon, this.onPressed, this.backgroundColor, required this.titleStyle});

  @override
  Widget build(BuildContext context) {

    return FilledButton(
      onPressed: onPressed, 
      child: Row(
        spacing: 8,
        children: [
          icon != null 
          ? Icon(icon)
          : const SizedBox(),

          title != null 
          ? Text(title!)
          : const SizedBox()
        ],
      )
    );
  }
}