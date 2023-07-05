import 'package:flutter/material.dart';
import 'package:hang_man/extensions/context_extension.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final VoidCallback onPressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: context.theme.elevatedButtonTheme.style!.copyWith(
        fixedSize: MaterialStatePropertyAll(
          Size(
            context.mediaQuery.size.width * 0.8,
            50,
          ),
        ),
      ),
      child: child,
    );
  }
}
