import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/core/constant/text_strings.dart';
import 'package:flutter_clean_architecture/core/route/app_router.dart';
import 'package:flutter_clean_architecture/core/theme/app_theme.dart';
import 'package:flutter_clean_architecture/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_clean_architecture/init_dependencies.dart';

void main() async {
  // -- pastikan flutter binding sudah jalan
  WidgetsFlutterBinding.ensureInitialized();

  await initDependencies();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => serviceLocator<AuthBloc>(),
      ),
    ],
    child: MainApp(),
  ));
  // runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    // --atur warna statusbar dan icon
    // Brightness statusBarIconBrightness =
    //     Theme.of(context).brightness == Brightness.light
    //         ? Brightness.dark
    //         : Brightness.light;

    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Theme.of(context).scaffoldBackgroundColor,
    //   // statusBarBrightness: statusBarIconBrightness,
    //   statusBarIconBrightness: statusBarIconBrightness,
    // ));

    return MaterialApp.router(
      routerConfig: appRouter.config(),
      title: MhyTextStrings.appName,
      themeMode: ThemeMode.system,
      theme: MhyAppTheme.lightTheme,
      darkTheme: MhyAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // home: SignupPage(),
    );
  }
}
