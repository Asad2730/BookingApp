
import 'package:app/utils/customTheme.dart';
import 'package:flutter/material.dart';

PreferredSize appbar(){
  return PreferredSize(
      preferredSize: Size.fromHeight(0.0),
      child: AppBar(
         backgroundColor: Colors.transparent,
          elevation: 0.0,
      ),
  );
}