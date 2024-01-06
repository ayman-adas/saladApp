part of './../import/import.dart';

class WImageAuth extends StatelessWidget {
  const WImageAuth(
      {super.key, required this.url, required this.data, required this.onTap});
  final String url;
  final String data;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: InkWell(
          onTap: onTap,
          child: Column(
            children: [
              Image(
                image: NetworkImage(url),
                height: MDime.md * 12.h,
                width: MDime.md * 180.w,
              ),
              Text(
                data.tr(),
                style: ThemeTextStyle.lLarge(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
