import 'package:flutter/foundation.dart';

class CountProvider with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void setCount()
  {_count++;
    print('called setCount ${_count}');
    notifyListeners();
  }

}
