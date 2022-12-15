import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/detail_controller.dart';

class DetailPage extends GetView<DetailController> {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sonuç'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "BMI Sonucunuz: ${Get.parameters['hesap'] ?? ""} ",
              ),
              Center(
                child: Text(
                  controller.sonuc(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
