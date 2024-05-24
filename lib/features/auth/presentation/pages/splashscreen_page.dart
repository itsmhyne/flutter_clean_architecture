import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/constant/size.dart';
import 'package:flutter_clean_architecture/core/constant/text_strings.dart';
import 'package:flutter_clean_architecture/core/route/app_router.dart';
import 'package:flutter_clean_architecture/core/theme/app_pallete.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SplashscreenPage extends StatefulWidget {
  const SplashscreenPage({super.key});

  @override
  State<SplashscreenPage> createState() => _SplashscreenPageState();
}

class _SplashscreenPageState extends State<SplashscreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      AutoRouter.of(context).push(WelcomeRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    const spinkit = SpinKitCircle(
      color: MhyPallete.primary,
      size: MhySizes.xl * 1.5,
    );

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(MhySizes.xl * 3),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  width: MhySizes.xl * 4,
                  height: MhySizes.xl * 4,
                  child: SvgPicture.asset(
                    MhyTextStrings.appLogo,
                    fit: BoxFit.cover,
                    colorFilter: const ColorFilter.mode(
                        MhyPallete.primary, BlendMode.srcIn),
                  ),
                ),
                const SizedBox(
                  height: MhySizes.md,
                ),
                const Text(
                  MhyTextStrings.appName,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: MhyPallete.primary,
                      fontSize: 40),
                ),
              ],
            ),
            const SizedBox(
              height: MhySizes.xl * 2,
              width: MhySizes.xl * 2,
              child: spinkit,
            )
          ],
        ),
      ),
    );
  }
}
