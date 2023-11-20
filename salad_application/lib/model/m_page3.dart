part of '../import/import.dart';

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
      data: MLanguages.banana.tr(),
      counter: 0,
      index: 0,
    ),
    WSaladButton(
      sail: 4,
      url: MSaladPicture.blueburrie,
      data: MLanguages.blueburrie.tr(),
      counter: 0,
      index: 1,
    ),
    WSaladButton(
      sail: 6,
      url: MSaladPicture.grabes,
      data: MLanguages.grabes.tr(),
      counter: 0,
      index: 2,
    ),
    WSaladButton(
      sail: 7,
      url: MSaladPicture.kiwi,
      data: MLanguages.kiwi.tr(),
      counter: 0,
      index: 3,
    ),
    WSaladButton(
      sail: 3,
      url: MSaladPicture.mango,
      data: MLanguages.mango.tr(),
      counter: 0,
      index: 4,
    ),
    WSaladButton(
      sail: 9,
      url: MSaladPicture.orange,
      data: MLanguages.orange.tr(),
      counter: 0,
      index: 5,
    ),
    WSaladButton(
      sail: 5,
      url: MSaladPicture.pineapple,
      data: MLanguages.pineapple.tr(),
      counter: 0,
      index: 6,
    ),
    WSaladButton(
      sail: 6,
      url: MSaladPicture.strawbery,
      data: MLanguages.strawbery.tr(),
      counter: 0,
      index: 7,
    ),
  ];
}
