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
              return const VHome();
            } else {
              return CErrorMassage(massage: MLanguages.nodata, callback: () {});
            }
          } else {
            return CErrorMassage(
                massage: MLanguages.noconnect, callback: () {});
          }
        },
      ),
    );
  }
}
