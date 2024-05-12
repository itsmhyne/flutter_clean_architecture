import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/constant/size.dart';
import 'package:flutter_clean_architecture/core/theme/app_pallete.dart';

class ContainerText extends StatelessWidget {
  ContainerText(
      {super.key, required this.text, this.bg, this.textColor, this.onTap});

  String text;
  Color? bg;
  Color? textColor;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
              horizontal: MhySizes.sm, vertical: MhySizes.md),
          decoration: BoxDecoration(
            color: bg ?? MhyPallete.primary,
            borderRadius: BorderRadius.circular(MhySizes.lg),
          ),
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: textColor ?? MhyPallete.white),
          )),
    );
  }
}
