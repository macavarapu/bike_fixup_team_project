import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage{
 static Future seteusername(String username) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("name", username);
  }

  static Future getusename() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("name") ?? "";
  }
   static Future setephonenumber(String phoneNumber) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("phonenumber", phoneNumber);
  }

  static Future getphonenumber() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("phonenumber") ?? "";
  }
  static Future setemail(String email) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("email", email);
  }

  static Future getemil() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("email") ?? "";
  }
  static Future setestate(String State) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("state", State);
  }

  static Future getstate() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("state") ?? "";
  }
   static Future setecity(String city) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("city", city);
  }

  static Future getcity() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("city") ?? "";
  }
 
}