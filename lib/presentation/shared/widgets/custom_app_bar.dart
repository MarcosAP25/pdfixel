import 'package:flutter/material.dart';

PreferredSizeWidget CustomAppBar 
({
  required BuildContext context,
}){

  return AppBar(
    title: SizedBox(
      width: 150,
      child: Image.asset('assets/images/horizontal_logo.png'),
    ),
  );
}