import 'core/g_index.dart';
import 'app/routes/app_pages.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "mnajem",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar', 'SA'),
      defaultTransition: Transition.fade,
      theme: AppTheme().getTheme(),
    ),
  );
}
