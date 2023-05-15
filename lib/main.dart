import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hidocdr/view/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:
          ThemeData.light(useMaterial3: true).copyWith(textTheme: const TextTheme(
            displayLarge: TextStyle(
              color: Colors.black,
              fontFamily: 'Cera Pro',
              fontWeight: FontWeight.w700,
              fontSize: 28,
            ),
            displayMedium: TextStyle(
              color: Colors.black,
              fontFamily: 'Cera Pro',
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
            displaySmall: TextStyle(
              color: Colors.black,
              fontFamily: 'Cera Pro',
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
            bodyLarge: TextStyle(
              color: Colors.black,
              fontFamily: 'Cera Pro',
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            bodyMedium: TextStyle(
              color: Colors.black,
              fontFamily: 'Cera Pro',
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
            scaffoldBackgroundColor: const Color.fromARGB(255, 243, 243, 243),
            appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
          ),
      home: const HomeScreen(),
    );
  }
}
