part of './../../import/import.dart';

class ViewCart extends StatefulWidget {
  const ViewCart({super.key});

  @override
  State<ViewCart> createState() => _ViewCartState();
}

class _ViewCartState extends State<ViewCart> {
  @override
  Widget build(BuildContext context) {
    TextEditingController country = TextEditingController();
    TextEditingController city = TextEditingController();
    TextEditingController state = TextEditingController();
    PhoneNumberEditingController phone =
        PhoneNumberEditingController.fromCountryCode('AZ');
    int myVar = 1;
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    Widget buttom(
      BuildContext context,
    ) {
      return ThemeTestphone.isIos(context)
          ? CupertinoButton(
              minSize: MDime.d9.h * 30,
              color: ThemeColor.gold,
              onPressed: () {},
              child: Text(MLanguages.addCart.tr(),
                  style: ThemeTextStyle.tLarge(context)))
          : ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(
                      Size(MDime.d7 * 130.w, MDime.d1.h * 30)),
                  backgroundColor: MaterialStatePropertyAll(ThemeColor.gold)),
              child: Text(MLanguages.addCart.tr(),
                      style: ThemeTextStyle.tLarge(context))
                  .tr(),
              onPressed: () async {
                CPasket pasket = Provider.of<CPasket>(context, listen: false);

                if (formKey.currentState?.validate() ?? false) {
                  // save data
                  formKey.currentState?.save();
                  if (country.value.text != "" &&
                      state.value.text != "" &&
                      city.value.text != '' &&
                      phone.value?.formattedNumber != '' &&
                      pasket.pasket._firstname != '' &&
                      pasket.pasket._lastname != '' &&
                      pasket.pasket._adress != '') {
                    pasket.pasket.setCountry(country.value.text);
                    pasket.pasket.setState(state.value.text);
                    pasket.pasket.setCity(city.value.text);
                    pasket.pasket.setPhone(phone.value!.formattedNumber);
                    pasket.pasket.setTime();
                    pasket.pasket.setSail();
                    // pasket.pasket.setList(CDatabase.pasketList);
                    if (myVar == 0) {
                      pasket.pasket.setPay(MLanguages.cash);
                    } else {
                      pasket.pasket.setPay(MLanguages.visa);
                    }
                    if (!await pasket.upload(context)) {
                      if (context.mounted) {
                        WidgetToast.buildToast(
                          msg: pasket.setErrorMessage ?? '',
                          context: context,
                        );
                      }
                    } else {
                      MDatabaseQuery.query.deleteAllSalad();
                      if (myVar == 0) {
                        if (context.mounted) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const VSalad()));
                        }
                      } else {
                        if (context.mounted) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const WidgetCreditCard()));
                        }
                      }
                    }
                  } else {
                    if (context.mounted) {
                      WidgetToast.buildToast(
                        msg: MLanguages.nodata.tr(),
                        context: context,
                      );
                    }
                  }
                } else {
                  if (context.mounted) {
                    WidgetToast.buildToast(
                      msg: MLanguages.nodata.tr(),
                      context: context,
                    );
                  }
                }
              });
    }

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Text(MLanguages.customerName.tr(),
                    style: ThemeTextStyle.bLarge(context)
                        ?.copyWith(fontWeight: FontWeight.bold)),
                const WidgetFullName(),
                WidgetPhoneNumber(controller: phone),
                WidgetCountryList(
                  country: country,
                  state: state,
                  city: city,
                ),
                const WidgetPasketAdress(),
                Text(MLanguages.payMethod.tr(),
                    style: ThemeTextStyle.bLarge(context)
                        ?.copyWith(fontWeight: FontWeight.bold)),
                MDime.md.verticalSpace,
                WidgetSwitch(
                  onChanged: (value) {
                    setState(() {
                      myVar = value;
                    });
                  },
                ),
                MDime.md.verticalSpace,
                buttom(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
