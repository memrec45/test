import 'package:flutter/material.dart';
import 'package:hang_man/extensions/context_extension.dart';

extension TextExtension on Text {
  labelLarge(BuildContext context) => Text(
        data!,
        style: context.textTheme.labelLarge,
      );
  labelMedium(BuildContext context) => Text(
        data!,
        style: context.textTheme.labelMedium,
      );
  titleLarge(BuildContext context) => Text(
        data!,
        style: context.textTheme.titleLarge,
      );
}
