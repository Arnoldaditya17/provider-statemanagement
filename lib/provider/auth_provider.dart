

import 'package:flutter/foundation.dart';
import 'package:http/http.dart'as http;
import 'package:http/http.dart';

class AuthProvider with ChangeNotifier {


  bool _loading= false;
  bool get loading => _loading;
  setLoading(bool value)
  {
    _loading=value;
    notifyListeners();
  }


  void login(String email, String password) async {
    setLoading(true);
    notifyListeners();


    try {
      Response response = await post(
        Uri.parse('https://reqres.in/api/register'),
        body: {
          "email" : email,
          "password" : password,
        }
      );
      if(response.statusCode==200)
        {
          print("successful");
          setLoading(false);

        }
      else{
        print("unsuccessful");
        setLoading(false);
      }

    } catch (e) {
      print(e.toString());
    }
  }
}
