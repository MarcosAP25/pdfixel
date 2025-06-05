import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    final colorScheme = Theme.of(context).colorScheme;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          children: [
            IconButton(
              onPressed: () {
                
              }, 
              icon: Icon(
                LucideIcons.menu,
                color: colorScheme.onSecondary,
              )
            )
          ],
        );
      },
    );
  }
}