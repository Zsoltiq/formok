import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_gyak/modules/text_input/controllers/text_input_view_controller.dart';
import 'package:get/get.dart';

class TextInputView extends StatelessWidget {
  TextInputViewController controller = Get.put(TextInputViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TextInputViewController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Login"),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: controller.mail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Email"),
                    hintText: "Add meg az Email-ed",
                    icon: Icon(Icons.mail),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  obscureText: true,
                  controller: controller.pwd,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Jelszó"),
                    hintText: "Add meg a jelszavad",
                    icon: Icon(Icons.lock),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: CupertinoButton.filled(
                  child: Text("login"),
                  onPressed: () {
                    controller.showData();
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
