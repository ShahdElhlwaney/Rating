import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void setStatusBarColor() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.blue));
}