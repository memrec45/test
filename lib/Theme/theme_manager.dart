import 'package:flutter/material.dart';
import 'package:hang_man/logger.dart';

class ThemeManager extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  bool _isLight = true;
  bool get isLight => _isLight;

  void changeTheme() {
    if (_isLight) {
      _themeMode = ThemeMode.dark;
    } else {
      _themeMode = ThemeMode.light;
    }
    _isLight = !_isLight;
    logger.wtf(_themeMode);
    notifyListeners();
  }
}
