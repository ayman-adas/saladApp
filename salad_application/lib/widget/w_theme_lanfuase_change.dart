part of '../import/import.dart';

class WTLChange extends StatelessWidget {
  const WTLChange(
      {super.key,
      required this.image,
      required this.data,
      required this.onTap,
      required this.height});
  final String image;
  final String data;
  final void Function()? onTap;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 100, left: 1),
        child: Align(
          alignment: AlignmentDirectional.topStart,
          child: Column(
            children: [
              SvgPicture.asset(
                image,
                width: height,
                height: height,
              ),
              Text(
                data.tr(),
                style: ThemeTextStyle.hMedium(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
