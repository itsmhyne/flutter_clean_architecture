import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/constant/size.dart';
import 'package:flutter_clean_architecture/core/theme/app_pallete.dart';
import 'package:flutter_clean_architecture/features/auth/presentation/widgets/button_icontext.dart';
import 'package:flutter_clean_architecture/features/auth/presentation/widgets/button_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(
            width: MhySizes.lg,
            height: MhySizes.lg,
            child: SvgPicture.asset(
              'assets/icon/back.svg',
            ),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
          // top: MhySizes.lg,
          left: MhySizes.lg,
          right: MhySizes.lg,
          bottom: MhySizes.md,
        ),
        child: ListView(
          children: [
            Text(
              'Welcome Back 👋',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: MhySizes.md,
            ),
            Text(
              'Your Smart School. Your Rules',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: MhySizes.xl,
            ),
            Text('Email', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(
              height: MhySizes.md,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: MhySizes.md, vertical: MhySizes.xs),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MhySizes.sm),
                  color: MhyPallete.grey.withOpacity(0.5)),
              child: TextField(
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w500),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    icon: SvgPicture.asset(
                      'assets/icon/email.svg',
                      width: MhySizes.lg,
                      height: MhySizes.lg,
                    ),
                    focusColor: MhyPallete.primary,
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    hintText: 'Email',
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: MhySizes.md,
            ),
            Text('Password', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(
              height: MhySizes.md,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: MhySizes.md, vertical: MhySizes.xs),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MhySizes.sm),
                  color: MhyPallete.grey.withOpacity(0.5)),
              child: TextField(
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w500),
                obscureText: true,
                decoration: InputDecoration(
                  icon: SvgPicture.asset(
                    'assets/icon/lock.svg',
                    width: MhySizes.lg,
                    height: MhySizes.lg,
                  ),
                  focusColor: MhyPallete.primary,
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  hintText: 'Password',
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  // suffixIcon: SvgPicture.asset(
                  //   'assets/icon/eye.svg',
                  //   width: MhySizes.sm,
                  //   height: MhySizes.sm,
                  // ),
                ),
              ),
            ),
            const SizedBox(
              height: MhySizes.md,
            ),
            Row(
              children: [
                Checkbox(value: true, onChanged: (e) {}),
                Text(
                  'Remember me',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Expanded(
                  child: Text(
                    textAlign: TextAlign.end,
                    'Forgot Password?',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: MhyPallete.blue, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: MhySizes.md,
            ),
            Text('or',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w500)),
            const SizedBox(
              height: MhySizes.lg,
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
            const Divider(),
            const SizedBox(
              height: MhySizes.md,
            ),
            ContainerText(text: 'Sign In')
          ],
        ),
      ),
    );
  }
}
