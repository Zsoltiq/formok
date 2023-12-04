import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_gyak/modules/switch_button/controllers/switch_button_view_controller.dart';
import 'package:get/get.dart';

class SwitchButtonView extends StatelessWidget {
  SwitchButtonViewController controller = Get.put(SwitchButtonViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SwitchButtonViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(title: Text("Switch Button")),
            body: Center(
              child: CupertinoSwitch(value: controller.value, onChanged: (value) {
                controller.setValue(value);
                print(value);
              }),
            ),
          );
        });
  }
}
