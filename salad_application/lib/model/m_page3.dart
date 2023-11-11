import 'package:fruit_salad/import/import.dart';
import 'package:fruit_salad/model/m_salad_name.dart';
import 'package:fruit_salad/model/m_salad_picture.dart';

int index = 0;

class MPage3 {
  static const String title = ", What fruit salad combo do you want today.";
  static const String hint = 'Search For Fruit salad Combo';

  static const String body =
      "We deliver the best and freshest fruit salad in town. Order for a combo today!!!";
  static final List<WSaladButton> list = [
    WSaladButton(
      sail: 7,
      url: MSaladPicture.banana,
      data: MSaladName.banana,
      counter: 0,
      index: 0,
    ),
    WSaladButton(
      sail: 4,
      url: MSaladPicture.blueburrie,
      data: MSaladName.blueburrie,
      counter: 0,
      index: 1,
    ),
    WSaladButton(
      sail: 6,
      url: MSaladPicture.grabes,
      data: MSaladName.grabes,
      counter: 0,
      index: 2,
    ),
    WSaladButton(
      sail: 7,
      url: MSaladPicture.kiwi,
      data: MSaladName.kiwi,
      counter: 0,
      index: 3,
    ),
    WSaladButton(
      sail: 3,
      url: MSaladPicture.mango,
      data: MSaladName.mango,
      counter: 0,
      index: 4,
    ),
    WSaladButton(
      sail: 9,
      url: MSaladPicture.orange,
      data: MSaladName.orange,
      counter: 0,
      index: 5,
    ),
    WSaladButton(
      sail: 5,
      url: MSaladPicture.pineapple,
      data: MSaladName.pineapple,
      counter: 0,
      index: 6,
    ),
    WSaladButton(
      sail: 6,
      url: MSaladPicture.strawbery,
      data: MSaladName.strawbery,
      counter: 0,
      index: 7,
    ),
  ];
}
