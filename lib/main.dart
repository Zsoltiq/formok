import 'package:flutter/material.dart';
import 'package:form_gyak/modules/checkbox/views/chekb_box_view.dart';
import 'package:form_gyak/modules/date_picker/views/date_picker_view.dart';
import 'package:form_gyak/modules/date_picker2/views/date_picker2_view.dart';
import 'package:form_gyak/modules/element_picker/views/element_picker_view.dart';
import 'package:form_gyak/modules/radio_button/views/radi_button_view.dart';
import 'package:form_gyak/modules/text_input/views/text_input_view.dart';
import 'package:form_gyak/regist_form/views/regist_form_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(debugShowCheckedModeBanner: false,
    home: RegistFormView(),
    theme: ThemeData(useMaterial3: true),
  ));
}
