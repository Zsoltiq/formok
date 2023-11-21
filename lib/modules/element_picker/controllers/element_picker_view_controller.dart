import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ElementPickerViewController extends GetxController{

  List<Widget> elements=[
    Text("vasalás",style: TextStyle(fontSize: 40),),
                  Text("főzés",style: TextStyle(fontSize: 40),),
                  Text("mosás",style: TextStyle(fontSize: 40),),
                  Text("evés",style: TextStyle(fontSize: 40),),
  ];

  int index=-1;
  void setIndex(int index){
    this.index=index;
    update();
  }

  Widget selectedElements(){
    if(index==-1){
      return  Text("");

    }else{
      return elements[index];
    }
  }
}