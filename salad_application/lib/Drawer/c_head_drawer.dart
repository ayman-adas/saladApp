part of '../import/import.dart';

class CDrawerHead extends StatelessWidget {
  const CDrawerHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MDime.l),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: DarkLightTheme.isDark(context)
                      ? ThemeColor.green
                      : ThemeColor.red,
                  width: MDime.xs),
            ),
            child: CircleAvatar(
                backgroundColor: DarkLightTheme.isDark(context)
                    ? ThemeColor.green
                    : ThemeColor.red,
                backgroundImage:
                    const AssetImage('./assets/٢٠٢٣٠٤٢١_١٩١٤٠٢.png'),
                radius: 50.0),
          ),
          MDime.base.verticalSpace,
          Text(
            textController.value.text,
            style: ThemeTextStyle.bLarge(context),
          ),
          MDime.base.verticalSpace,
          Text(
            'aymanhaniadas28@gmail.com',
            style: ThemeTextStyle.bLarge(context),
          )
        ],
      ),
    );
  }
}
