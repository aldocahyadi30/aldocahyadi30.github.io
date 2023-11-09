import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'package:fluttertoast/fluttertoast.dart';



final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aldo Cahyadi | Portfolio',
      navigatorKey: navigatorKey,
      builder: FToastBuilder(),
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorSchemeSeed: const Color(0xFF2E2E35),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}



