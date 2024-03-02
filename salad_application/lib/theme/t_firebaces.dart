part of './../import/import.dart';

class TFirebase extends StatelessWidget {
  const TFirebase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const WidgetProgress();
          }
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return const Wrapper();
            } else {
              return const CErrorMassage(
                massage: MLanguages.nodata,
              );
            }
          } else {
            return const CErrorMassage(
              massage: MLanguages.noconnect,
            );
          }
        },
      ),
    );
  }
}
