import 'package:flutter/material.dart';
import 'dart:core';

int firstElement(List items){
  return items[0];
}

void main(){
  List myList = [0,1,7,4,5,6,7,8,09,5,4,65,6,7,5,54,4,3,32,3,5,5,43,];
  firstElement(myList);
}