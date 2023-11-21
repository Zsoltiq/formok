import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistFormViewController extends GetxController{
   TextEditingController firstname=TextEditingController();
   TextEditingController lastname=TextEditingController();
   DateTime birthDate =DateTime.now();
   String selectedGender="";

  void showDatePicker() {
    Get.bottomSheet(
      Container(
        color: Colors.white,
                height: 250,
                child: CupertinoDatePicker(
                  initialDateTime: DateTime.now(),
                  mode: CupertinoDatePickerMode.date,
                  dateOrder: DatePickerDateOrder.ymd,
                  use24hFormat: true,
                  onDateTimeChanged: (date) {
                    birthDate=date;
                    update();
                    
                  },
                ),
              ),
    );
  }
}