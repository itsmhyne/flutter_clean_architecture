import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/constant/text_strings.dart';
import 'package:flutter_clean_architecture/core/route/app_router.dart';
import 'package:flutter_clean_architecture/core/secrets/app_secret.dart';
import 'package:flutter_clean_architecture/core/theme/app_theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  // -- pastikan flutter binding sudah jalan
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
      url: AppSecret.supabaseUrl, anonKey: AppSecret.supabaseAnonKey);
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
      title: MhyTextStrings.appName,
      themeMode: ThemeMode.light,
      theme: MhyAppTheme.lightTheme,
      darkTheme: MhyAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // home: SignupPage(),
    );
  }
}
