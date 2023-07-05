import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hang_man/Theme/theme.dart';
import 'package:hang_man/extensions/context_extension.dart';
import 'package:hang_man/extensions/empty_padding_extension.dart';
import 'package:hang_man/extensions/img_extension.dart';
import 'package:hang_man/logger.dart';
import 'package:hang_man/screens/game_screen.dart';
import 'package:hang_man/utils/HomePage/hangman.dart';
import 'package:hang_man/utils/shared/bottom_menu.dart';
import 'package:hang_man/utils/shared/myButton.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late bool _startAnimate;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double w = context.mediaQuery.size.width;
    final double h = context.mediaQuery.size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hangman",
          style: TextStyle(color: AppColors.buttonColor),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            /// Hangman Animation
            const Expanded(
              child: HangMan(),
            ),

            /// Start Button
            MyButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => GamePage(),
              )),
              child: Text(
                "Start",
                style: context.textTheme.labelMedium,
              ),
            ),

            (h * 0.05).ph,
          ],
        ),
      ),
    );
  }
}
