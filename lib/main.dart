import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('fa'),
        Locale('en'),
        Locale('tr'),
      ],
      path: 'assets/locales',
      fallbackLocale: const Locale('fa'),
      child: const HackerApp(),
    ),
  );
}

class HackerApp extends StatelessWidget {
  const HackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hacker – Ethical Lab',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}
