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
    IconData icon(BuildContext context) {
      return ThemeTestphone.isIos(context)
          ? MIcons.arrowbaccurp
          : MIcons.arrowbac;
    }

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(icon(context)),
            onPressed: () => Navigator.pop(
              context,
            ),
          ),
        ),
        body: SizedBox(
            width: MDime.fullScreen * 690.w,
            height: MDime.fullScreen * 690.h,
            child: Column(children: [
              SizedBox(
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
                child: Text(data.tr(), style: ThemeTextStyle.hSmall(context)),
              ),
              MDime.l.verticalSpace,
              Divider(
                color: DarkLightTheme.isDark(context)
                    ? ThemeColor.green
                    : ThemeColor.red,
              ),
              MDime.l.verticalSpace,
              Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 25, 0).w,
                child: Text(desc, style: ThemeTextStyle.tMedium(context)).tr(),
              ),
            ])));
  }
}
