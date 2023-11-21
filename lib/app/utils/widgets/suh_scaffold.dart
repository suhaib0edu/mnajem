import '../../exports.dart';

class SuhScaffold extends StatelessWidget {
  final Widget body;
  final Widget? drawer;
  const SuhScaffold({super.key, required this.body, this.drawer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundC,
      drawer: drawer,
      body: SafeArea(
        child: body,
      ),
    );
  }
}
