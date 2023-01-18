
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/data/services/dependency_injection.dart';
import 'app/data/services/theme_service.dart';
import 'app/data/services/translations_service.dart';
import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'app/ui/theme/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  DependecyInjection.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Job Boarder',
      debugShowCheckedModeBanner: false,
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      themeMode: ThemeService().getThemeMode(),
      translations: Translation(),
      locale: Locale('en'),
      fallbackLocale: Locale('en'),
      initialRoute: AppRoutes.START,
      unknownRoute: AppPages.unknownRoutePage,
      getPages: AppPages.pages,
      // builder: (_, child) {
      //   return MainLayout(child: child!);
      // },
    );
  }
}
