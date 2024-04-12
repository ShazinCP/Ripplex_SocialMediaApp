import 'package:flutter/cupertino.dart';

class SearchProvider extends ChangeNotifier {
  TextEditingController textEditingController = TextEditingController();
  bool showClearButton = false;

  SearchProvider() {
    textEditingController.addListener(updateClearButtonVisibility);
  }

  set showClearButtons(bool value) {
    showClearButton = value;
    notifyListeners();
  }

  void updateClearButtonVisibility() {
    showClearButtons = textEditingController.text.isNotEmpty;
  }
}
