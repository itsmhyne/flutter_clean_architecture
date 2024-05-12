import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/constant/size.dart';
import 'package:flutter_clean_architecture/core/theme/app_pallete.dart';
import 'package:flutter_clean_architecture/core/validator/validator.dart';
import 'package:flutter_svg/svg.dart';

class ContainerTextfield extends StatelessWidget {
  const ContainerTextfield({
    super.key,
    required this.icon,
    this.type,
    required this.text,
    required this.isObsecure,
    required this.controller,
  });

  final String icon;
  final TextInputType? type;
  final String text;
  final bool isObsecure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: MhySizes.md, vertical: MhySizes.xs),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MhySizes.sm),
          color: MhyPallete.grey.withOpacity(0.5)),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (text == 'Password') {
            return MhyValidator.validatePassword(value);
          } else if (text == 'Email') {
            return MhyValidator.validateEmail(value);
          } else {
            if (value!.isEmpty) return 'Field is required';
          }
          return null;
        },
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.w500),
        keyboardType: type ?? TextInputType.none,
        obscureText: isObsecure,
        decoration: InputDecoration(
            icon: SvgPicture.asset(
              icon,
              width: MhySizes.lg,
              height: MhySizes.lg,
            ),
            focusColor: MhyPallete.primary,
            hintStyle: Theme.of(context).textTheme.bodyMedium,
            hintText: text,
            errorMaxLines: 2,
            errorStyle: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: MhyPallete.red),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none),
      ),
    );
  }
}
