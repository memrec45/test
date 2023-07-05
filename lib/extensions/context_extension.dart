import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  //// Theme
  TextTheme get textTheme => Theme.of(this).textTheme;

  ThemeData get theme => Theme.of(this);

  //// MediaQuery Extensions
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

  //// Navigator

  pop() => Navigator.of(this).pop();

  ////    Text
  // Text labelLarge(String text) => Text(
  //       text,
  //       style: textTheme.labelLarge,
  //     );
}
