part of './../../import/import.dart';

class WidgetCountryList extends StatefulWidget {
  const WidgetCountryList(
      {super.key,
      required this.country,
      required this.city,
      required this.state});

  final TextEditingController country;
  final TextEditingController state;
  final TextEditingController city;
  @override
  State<WidgetCountryList> createState() => _WidgetCountryListState();
}

class _WidgetCountryListState extends State<WidgetCountryList> {
  String? countryValue;
  String? stateVDalue;
  String? cityValue;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: (MDime.xxl + MDime.xxl + MDime.xxl).h,
        child: Column(
          children: [
            CountryStateCityPicker(
                country: widget.country,
                state: widget.state,
                city: widget.city,
                dialogColor: Colors.grey.shade200,
                textFieldDecoration: InputDecoration(
                    fillColor: Colors.blueAccent.shade100,
                    filled: true,
                    suffixIcon: const Icon(Icons.arrow_downward_rounded),
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none))),
            // To disable option set to false
            // theme: CountryTheme(
            //   isShowFlag: true,
            //   isShowTitle: true,
            //   isShowCode: true,
            //   isDownIcon: true,
            //   showEnglishName: true,
            // ),
            // // Set default value
            // initialSelection: '+962',
            // // or
            // // initialSelection: 'jor'

            // // Whether to allow the widget to set a custom UI overlay
            // useUiOverlay: true,
            // // Whether the country list should be wrapped in a SafeArea
            // useSafeArea: false),
          ],
        ));
  }
}
