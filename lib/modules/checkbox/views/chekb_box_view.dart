import 'package:flut_grouped_buttons/flut_grouped_buttons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:form_gyak/modules/checkbox/controllers/check_box_view_controller.dart';
import 'package:get/get.dart';

class CheckBoxView extends StatelessWidget {
  CheckBoxViewController controller = Get.put(CheckBoxViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckBoxViewController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: Text("CheckBox")),
          body: Column(
            children: [
              FlutGroupedButtons(
                checkColor: Colors.pink,
                activeColor: Colors.purple,
                data:controller.teendok,
                onChanged: (p0) {
                  if(p0 is List){
                    controller.setCurrentList(p0);
                  }else{
                    controller.setCurrentList([]);
                  }
                  
                },
              ),
             Text("Elvégzet teendők:"),
             Align(alignment: Alignment.centerLeft,
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: 
                  controller.teljesitettTeendokListaja(),
                
               ),
             )
            ],
          ),
        );
      },
    );
  }
}
