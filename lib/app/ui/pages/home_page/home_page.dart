import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../controllers/home_controller.dart';
import '../../../routes/app_pages.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.boyController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text("Boy cm"),
                  ),
                  validator: (value) {
                    if (value == "") {
                      return "Bu alan boş geçilemez";
                    }
                    if (value == "0") {
                      return "Bu alan sıfır olamaz";
                    }
                    if (double.parse(value ?? "") == 0) {
                      return "Bu alan sıfır olamaz";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.kiloController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text("Kilo kg"),
                  ),
                  validator: (value) {
                    if (value == "") {
                      return "Bu alan boş geçilemez";
                    }
                    if (value == "0") {
                      return "Bu alan sıfır olamaz";
                    }
                    if (double.parse(value!) == 0) {
                      return "Bu alan sıfır olamaz";
                    }

                    return null;
                  },
                ),
                TextButton(
                  onPressed: () {
                    if (controller.formKey.currentState!.validate() == true) {
                      double boyunKaresi =
                          (double.parse(controller.boyController.text) / 100) *
                              (double.parse(controller.boyController.text) /
                                  100);
                                  
                      double kilo =
                          double.parse(controller.kiloController.text);

                      double hesap = kilo / boyunKaresi;

                      print(hesap);
                      Get.toNamed(
                        Routes.DETAIL,
                        parameters: {"hesap": hesap.toString()},
                      );
                    }
                  },
                  child: const Text("Hesapla"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
