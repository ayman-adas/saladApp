part of './../import/import.dart';

class WidgetProgress extends StatelessWidget {
  const WidgetProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
