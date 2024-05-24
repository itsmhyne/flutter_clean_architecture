import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/core/commons/widget/loader.dart';
import 'package:flutter_clean_architecture/core/constant/size.dart';
import 'package:flutter_clean_architecture/core/theme/app_pallete.dart';
import 'package:flutter_clean_architecture/core/utils/show_snackbar.dart';
import 'package:flutter_clean_architecture/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_clean_architecture/features/auth/presentation/widgets/button_icontext.dart';
import 'package:flutter_clean_architecture/features/auth/presentation/widgets/button_text.dart';
import 'package:flutter_clean_architecture/features/auth/presentation/widgets/container_textfield.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormState>();

  // textfield
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthFailure) {
          showSnackbar(context, state.message);
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return Loader();
        }
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
                  bottom: MhySizes.md),
              child: Form(
                key: formKey,
                child: ListView(
                  children: [
                    Text(
                      'Join Smartma Today',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: MhySizes.md,
                    ),
                    Text(
                      'Join smartma. Your gateaway to Smart Madrasah',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: MhySizes.xl,
                    ),
                    Text('Name',
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(
                      height: MhySizes.md,
                    ),
                    ContainerTextfield(
                      icon: 'assets/icon/user.svg',
                      isObsecure: false,
                      text: 'Name',
                      type: TextInputType.name,
                      controller: nameController,
                    ),
                    const SizedBox(
                      height: MhySizes.md,
                    ),
                    Text('Email',
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(
                      height: MhySizes.md,
                    ),
                    ContainerTextfield(
                      icon: 'assets/icon/email.svg',
                      isObsecure: false,
                      text: 'Email',
                      type: TextInputType.emailAddress,
                      controller: emailController,
                    ),
                    const SizedBox(
                      height: MhySizes.md,
                    ),
                    Text('Password',
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(
                      height: MhySizes.md,
                    ),
                    ContainerTextfield(
                      icon: 'assets/icon/lock.svg',
                      text: 'Password',
                      type: TextInputType.visiblePassword,
                      isObsecure: true,
                      controller: passwordController,
                    ),
                    const SizedBox(
                      height: MhySizes.md,
                    ),
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (e) {}),
                        Text(
                          'I agree to Smartma',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          '  Terms & Conditions.',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: MhyPallete.blue,
                                  fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: MhySizes.md,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          '  Sign in.',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: MhyPallete.blue,
                                  fontWeight: FontWeight.bold),
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
                    const Divider(),
                    const SizedBox(
                      height: MhySizes.md,
                    ),
                    ContainerText(
                      text: 'Sign Up',
                      onTap: () {
                        if (!formKey.currentState!.validate()) return;
                        // --save data
                        context.read<AuthBloc>().add(AuthSignup(
                            name: nameController.text,
                            email: emailController.text,
                            password: passwordController.text));
                      },
                    )
                  ],
                ),
              )),
        );
      },
    );
  }
}

// class ContainerTextfield extends StatelessWidget {
//   const ContainerTextfield({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//           horizontal: MhySizes.md, vertical: MhySizes.xs),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(MhySizes.sm),
//           color: MhyPallete.grey.withOpacity(0.5)),
//       child: TextField(
//         style: Theme.of(context)
//             .textTheme
//             .bodyLarge
//             ?.copyWith(fontWeight: FontWeight.w500),
//         keyboardType: TextInputType.emailAddress,
//         decoration: InputDecoration(
//             icon: SvgPicture.asset(
//               'assets/icon/email.svg',
//               width: MhySizes.lg,
//               height: MhySizes.lg,
//             ),
//             focusColor: MhyPallete.primary,
//             hintStyle: Theme.of(context).textTheme.bodyMedium,
//             hintText: 'Email',
//             focusedBorder: InputBorder.none,
//             enabledBorder: InputBorder.none),
//       ),
//     );
//   }
// }
