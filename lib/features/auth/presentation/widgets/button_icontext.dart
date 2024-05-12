import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/constant/size.dart';
import 'package:flutter_clean_architecture/core/theme/app_pallete.dart';
import 'package:flutter_svg/svg.dart';

class ContainerIconText extends StatelessWidget {
  ContainerIconText({super.key, required this.icon, required this.text});

  String icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
            horizontal: MhySizes.sm * 1.5, vertical: MhySizes.md),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(MhySizes.lg),
            border: Border.all(color: MhyPallete.grey, width: 0.7)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              icon,
              width: MhySizes.lg,
            ),
            Expanded(
                child: Text(
              textAlign: TextAlign.center,
              text,
              style: Theme.of(context).textTheme.titleMedium,
            )),
          ],
        ));
  }
}
