import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/theme/app_pallete.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    const spinkit = SpinKitCircle(
      color: MhyPallete.primary,
    );
    return Scaffold(
      backgroundColor: MhyPallete.white,
      body: Center(
        child: spinkit,
      ),
    );
  }
}
