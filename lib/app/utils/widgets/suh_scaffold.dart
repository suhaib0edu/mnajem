import '../../exports.dart';

class SuhScaffold extends StatelessWidget {
  final Widget body;
  const SuhScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScaffold,
      body: SafeArea(
        child: body,
      ),
    );
  }
}
