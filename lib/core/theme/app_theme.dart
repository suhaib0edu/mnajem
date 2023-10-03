import '../g_index.dart';

class AppTheme {
  getTheme() {
    return ThemeData(fontFamily: 'Cairo').copyWith(
      primaryColor: baseColor,
      scaffoldBackgroundColor: backgroundColor,
    );
  }
}
