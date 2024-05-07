import 'package:flutter/material.dart';
import 'package:web_rise_consulting/config/routes/global_route.dart';
import 'package:web_rise_consulting/config/themes/rise_theme_fonts.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('th'),
      ],
      path: 'lib/translations',
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      //home: RiseHomeScreenTwo(isAutoscoll: false),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: GlobalRouter.router,
      theme: RiseTheme.themeData,
      debugShowCheckedModeBanner: false,
    );
  }
}

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
          
        
        );
  }
}