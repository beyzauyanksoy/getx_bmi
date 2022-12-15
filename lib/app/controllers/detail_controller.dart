import 'package:get/get.dart';

class DetailController extends GetxController {
  String sonuc() {
    String gonderilenDeger = Get.parameters['hesap'] ?? "";
    double sonuc = double.parse(gonderilenDeger);

    if (sonuc < 18.5) {
      return "Underweight";
    } else if (sonuc >= 18.5 && sonuc <= 24.9) {
      return "Normal";
    } else if (sonuc >= 25 && sonuc <= 29.9) {
      return "Over Weight";
    } else if (sonuc >= 30 && sonuc <= 34.9) {
      return "Obesity Class 1";
    } else if (sonuc >= 35 && sonuc <= 39.9) {
      return "Obesity Class 2";
    } else if (sonuc >= 40) {
      return "Extreme Obesity";
    }
    return "";
  }
}
