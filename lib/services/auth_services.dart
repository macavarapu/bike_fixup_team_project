



import 'package:bike_fixup_team_project/view/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';


  class AuthService {
  Future<void> signOut(BuildContext context) async {
    try {
      // Clear user-related data
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove('phonenumber');
      // await prefs.remove('name');
      // await prefs.remove('phone');
      // await prefs.remove('password');

      // You might want to perform additional cleanup based on your authentication method

      // Navigate to the login screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Loginscreen()),
      );
    } catch (e) {
      print('Error during sign out: $e');
      // Handle error if needed
    }
  }
}