import 'package:flutter/foundation.dart';

class FavouriteProvider with ChangeNotifier {
  List<int> list = [];

  List<int> get value => list;
  void setList(index) {
    list.add(index);
    notifyListeners();
  }

  void removeList(index) {
    list.remove(index);
    notifyListeners();
  }
}
