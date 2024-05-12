import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/constant/size.dart';
import 'package:flutter_clean_architecture/core/constant/text_strings.dart';
import 'package:flutter_clean_architecture/core/route/app_router.dart';
import 'package:flutter_clean_architecture/core/theme/app_pallete.dart';
import 'package:flutter_clean_architecture/features/auth/presentation/widgets/button_icontext.dart';
import 'package:flutter_clean_architecture/features/auth/presentation/widgets/button_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
            top: MhySizes.xl * 2, left: MhySizes.lg, right: MhySizes.lg),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MhySizes.xl * 2.5,
              height: MhySizes.xl * 2.5,
              child: SvgPicture.asset(
                MhyTextStrings.appLogo,
                fit: BoxFit.cover,
                colorFilter:
                    const ColorFilter.mode(MhyPallete.primary, BlendMode.srcIn),
              ),
            ),
            const SizedBox(
              height: MhySizes.xl,
            ),
            Text(
              'Let\'s Get Started',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: MhySizes.md,
            ),
            Text(
              'Let\'s dive into your account',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: MhySizes.xl,
            ),
            ContainerIconText(
              icon: 'assets/icon/google.svg',
              text: 'Continue with Google',
            ),
            const SizedBox(
              height: MhySizes.md,
            ),
            ContainerIconText(
              icon: 'assets/icon/apple.svg',
              text: 'Continue with Apple',
            ),
            const SizedBox(
              height: MhySizes.md,
            ),
            ContainerIconText(
              icon: 'assets/icon/facebook.svg',
              text: 'Continue with Facebook',
            ),
            const SizedBox(
              height: MhySizes.md,
            ),
            ContainerIconText(
              icon: 'assets/icon/x.svg',
              text: 'Continue with X',
            ),
            const SizedBox(
              height: MhySizes.lg * 2,
            ),
            InkWell(
              onTap: () {
                AutoRouter.of(context).push(const SigninRoute());
              },
              child: ContainerText(
                text: 'Sign In',
              ),
            ),
            const SizedBox(
              height: MhySizes.md,
            ),
            InkWell(
              onTap: () {
                AutoRouter.of(context).push(const SignupRoute());
              },
              child: ContainerText(
                text: 'Sign Up',
                bg: MhyPallete.grey.withOpacity(0.4),
                textColor: MhyPallete.primary,
              ),
            ),
            const SizedBox(
              height: MhySizes.xl * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Privacy Policy',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  ' . ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  'Terms of Service',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
