import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AppLayout{
  static getSize(BuildContext context){

    return MediaQuery.of(context).size;
  }
  static getScreenHeight(){
    return Get.height;
  }
  static getScreenWidth(){
    return Get.width;
  }
  static getHeight(int pixels){
    double x = getScreenHeight()/pixels;
    return getScreenHeight()/x;
  }
  static getWidth(int pixels){
    double x = getScreenWidth()/pixels;
    return getScreenWidth()/x;
  }
}