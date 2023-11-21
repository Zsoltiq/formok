import 'package:flut_grouped_buttons/flut_grouped_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_gyak/modules/radio_button/controllers/radio_button_view_controller.dart';
import 'package:get/get.dart';

class RadioButtonView extends StatelessWidget {
  RadioButtonViewController controller = Get.put(RadioButtonViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RadioButtonViewController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("radio button"),
          ),
          body: Column(
            children: [
              FlutGroupedButtons(
                checkColor: Colors.pink,
                activeColor: Colors.purple,
                isRadio: true,
                data:controller.chekBoxList,
                onChanged: (p0) {
                  if(p0!=null){
                    controller.setSelectedText(p0.toString());
                  }else{
                    controller.setSelectedText("");
                  }
                  
                },
              ),
              Text("s zsoltinak:${controller.randomSzoveg()}"),
              Text(controller.selectedText,style: TextStyle(fontSize: 50),)
            ],
          ),
        );
      },
    );
  }
}
