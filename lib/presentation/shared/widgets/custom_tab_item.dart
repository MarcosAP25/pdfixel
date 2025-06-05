import 'package:flutter/material.dart';

class CustomTabItem extends StatelessWidget {
  final bool isSelected;
  final Function()? onTap;
  final String title;
  const CustomTabItem({
    super.key,
    required this.isSelected,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {


    final colors = Theme.of(context).colorScheme;
    // final texts = Theme.of(context).textTheme;
    // final sizes = MediaQuery.of(context).size;


    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          
          height: 25,
          decoration: BoxDecoration(
            color: isSelected ? colors.onPrimary : Colors.transparent,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: isSelected ? colors.primary : colors.secondary,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}