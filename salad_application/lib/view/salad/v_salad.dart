// ignore_for_file: file_names

part of '../../import/import.dart';

class VSalad extends StatelessWidget {
  const VSalad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    IconData iconShopping(BuildContext context) {
      return ThemeTestphone.isIos(context)
          ? MIcons.shoppingcupr
          : MIcons.shopping;
    }

    CFruitsalad controllerFruitUpload = Provider.of<CFruitsalad>(context);

    // get data stream
    return StreamBuilder<List<MFruitSalad>>(
        stream: controllerFruitUpload.getAllsalad,
        builder: (context, snapshot) {
          // waiting
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const WidgetProgress();
          }
          // check active connection
          if (snapshot.connectionState == ConnectionState.active) {
            // check has data
            if (snapshot.hasData) {
              return PopScope(
                canPop: false,
                child: Scaffold(
                  appBar: AppBar(
                    actions: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, MRouteName.search);
                          },
                          icon: const Icon(MIcons.search)),
                      IconButton.outlined(
                        onPressed: () {
                          Navigator.pushNamed(context, MRouteName.packet);
                        },
                        icon: Icon(iconShopping(context)),
                      )
                    ],
                  ),
                  drawer: const VMainDrawer(),
                  body: Column(children: [
                    SizedBox(
                        height: MDime.d1 * 690 - 500.h,
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 20, 5, 0).w,
                            child: Column(children: [
                              Text(
                                  "${MLanguages.hello.tr()}  ${MLanguages.page3title.tr()}",
                                  style: ThemeTextStyle.tMedium(context)),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0).h,
                                child: Text(MLanguages.saladcombo,
                                        style: ThemeTextStyle.hMedium(context))
                                    .tr(),
                              ),
                            ]))),
                    Divider(
                      color: DarkLightTheme.isDark(context)
                          ? ThemeColor.green
                          : ThemeColor.red,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: MDime.d3 * 690 - 600.h,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: MAdvision.list.length,
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                                child: Row(
                              children: [
                                Image(
                                  fit: BoxFit.fill,
                                  width: MDime.d6 * 95.w,
                                  height: MDime.d3 * 690 - 500.h,
                                  image: AssetImage(MAdvision.list[index]),
                                ),
                                MDime.l.horizontalSpace,
                              ],
                            ));
                          },
                        ),
                      ),
                    ),
                    Divider(
                      color: DarkLightTheme.isDark(context)
                          ? ThemeColor.green
                          : ThemeColor.red,
                    ),
                    Expanded(
                        child: ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (BuildContext context, int index) {
                        return WSaladButton(
                          salad: snapshot.data![index],
                          counter: 0,
                        );
                      },
                    )),
                  ]),
                ),
              );
            } else {
              // no data
              return CErrorMassage(massage: MLanguages.nodata);
            }
          } else {
            // no active
            return CErrorMassage(massage: MLanguages.noconnect);
          }
        });
  }
}
