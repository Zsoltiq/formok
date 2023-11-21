import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_gyak/modules/element_picker/controllers/element_picker_view_controller.dart';
import 'package:get/get.dart';

class ElementPickerWiew extends StatelessWidget {
  ElementPickerViewController controller =  Get.put(ElementPickerViewController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ElementPickerViewController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title:(controller.selectedElements()),
          ),
          body: Center(
            child: CupertinoButton.filled(child: Text("tallózó"), onPressed: (){
              Get.bottomSheet(Container(
                color: Colors.white,
                height: 150,
                child: CupertinoPicker(itemExtent: 30,
                onSelectedItemChanged: (int index){
                  controller.setIndex(index);
                },
                children: controller.elements,
                  
                
                ),
              ));

            }),
          ),
        );
      },
    );
  }
}
