import 'package:flut_grouped_buttons/flut_grouped_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_gyak/regist_form/controllers/regist_form_view_controller.dart';
import 'package:get/get.dart';

class RegistFormView extends StatelessWidget {
  RegistFormViewController controller = Get.put(RegistFormViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistFormViewController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.navigate_next_outlined),
            onPressed: () {
              controller.sendDataToTheNextView();
            },
          ),
          appBar: AppBar(
            title: Center(child: Text("Regisztráció")),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Text("Add meg a neved"),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: controller.firstname,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Keresztnév"),
                      hintText: "Add meg a keresztneved",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: controller.lastname,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Vezetéknév"),
                      hintText: "Add meg a vezetékneved",
                    ),
                  ),
                ),
                Text("Add meg a születési dátumod"),
                Text(controller.birthDate.toString().split(' ')[0]),
                CupertinoButton.filled(
                  child: Text("Dátum megadása"),
                  onPressed: () {
                    controller.showDatePicker();
                  },
                ),
                Divider(),
                Text("Sex"),
                FlutGroupedButtons(
                  isRadio: true,
                  data: [
                    "nő",
                    "férfi",
                  ],
                  onChanged: (p0) {
                    if (p0 != null) {
                      if(p0.toString()=="férfi"){
                      controller.male = true;
                    } else {
                      controller.male = false;
                    }
                    }
                  },
                ),
                Divider(),
                Text("Kedvenc színed"),
                FlutGroupedButtons(
                  isRadio: false,
                  data: [
                    "zöld",
                    "kék",
                    "piros",
                    "sárga",
                  ],
                  onChanged: (p0) {
                    if(p0!=null){
                      controller.favoriteColors=p0;
                      print(p0);
                    }
                  },
                ),
                Text("Válaszd ki a kedvenc autómárkád"),
                Text("automárka"),
                CupertinoButton.filled(
                  child: Text("Autómárka kiválasztása"),
                  onPressed: () {
                     Get.bottomSheet(Container(
                color: Colors.white,
                height: 150,
                child: CupertinoPicker(itemExtent: 30,
                onSelectedItemChanged: (int index){
                  controller.setSelectedCarBand(index);
                },
                children: controller.elements,
                  
                
                ),
              ));
                  },
                ),
                Divider(),
              ],
            ),
          ),
        );
      },
    );
  }
}
