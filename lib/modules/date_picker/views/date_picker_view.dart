import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_gyak/modules/date_picker/controllers/date_picker_view_controller.dart';
import 'package:get/get.dart';

class DatePickerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DatePickerViewController controller =
        Get.put(DatePickerViewController(context));
    return GetBuilder<DatePickerViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Text(controller.birthDate.toString().split(' ')[0]),
            ),
            body: Center(
              child: CupertinoButton(
                  child: Text("Add meg a születési éved"),
                  onPressed: (){
                    controller.chooseDate();
                  }),
            ),
          );
        });
  }
}
