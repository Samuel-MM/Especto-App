import 'package:flutter/cupertino.dart';

class BrightnessController extends ChangeNotifier {
  bool __isDarkTheme = false;

  BrightnessController._() {}

  static final BrightnessController _instance = BrightnessController._();

  changeTheme() {
    __isDarkTheme = !__isDarkTheme;
    notifyListeners();
  }

  getTheme() {
    return __isDarkTheme;
  }

  static BrightnessController getInstance() {
    return _instance;
  }
}
