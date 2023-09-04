import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void setStatusBarColor() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}