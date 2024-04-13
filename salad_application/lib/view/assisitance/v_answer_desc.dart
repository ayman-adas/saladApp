part of './../../import/import.dart';

// ignore: must_be_immutable
class VAnswerDesc extends StatelessWidget {
  const VAnswerDesc({
    super.key,
    required this.data,
    required this.url,
    required this.desc,
  });
  final String data;
  final String desc;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar
        appBar: AppBar(
          backgroundColor: ThemeColor.appbar,
        ),
        body: SizedBox(
            width: MDime.fullScreen * 690.w,
            height: MDime.fullScreen * 690.h,
            child: Column(children: [
              SizedBox(
                //image
                height: MDime.half * 690.h,
                child: Image(
                  image: NetworkImage(
                    url,
                  ),
                  height: MDime.half.h,
                  fit: BoxFit.fill,
                ),
              ),
              MDime.l.verticalSpace,
              Center(
                //data
                child: Text(data.tr(), style: ThemeTextStyle.hSmall(context)),
              ),
              MDime.l.verticalSpace,
              Divider(
                color: DarkLightTheme.isDark(context)
                    ? ThemeColor.grey
                    : ThemeColor.red,
              ),
              MDime.l.verticalSpace,
              Container(
                //desc
                padding: const EdgeInsets.fromLTRB(30, 10, 25, 0).w,
                child: Text(desc, style: ThemeTextStyle.tMedium(context)).tr(),
              ),
            ])));
  }
}
