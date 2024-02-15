part of './../import/import.dart';

@override
class WSearch {
  static SearchPage<WSaladButton> searcch = SearchPage<WSaladButton>(
      searchStyle: const TextStyle(),
      items: MPage3.list,
      searchLabel: MLanguages.searchLabel.tr(),
      suggestion: Center(
        child: const Text(MLanguages.suggestion).tr(),
      ),
      failure: Center(
        child: const Text(MLanguages.failure).tr(),
      ),
      filter: (WSaladButton salad) => [
            salad.data,
          ],
      builder: (
        WSaladButton salad,
      ) =>
          ListTile(
            title: salad,
          ));
}
