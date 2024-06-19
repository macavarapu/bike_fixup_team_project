import 'package:bike_fixup_team_project/constants/routes.dart';
import 'package:bike_fixup_team_project/constants/routes_constants.dart';
import 'package:flutter/material.dart';

void main() async {
//         await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );
    
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       initialRoute: RouteList.initial,
        routes: Routes.routes,
    );
  }
}
