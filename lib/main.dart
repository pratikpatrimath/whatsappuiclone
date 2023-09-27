import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/settings.dart';
import 'package:whatsapp/widgets/chatpage.dart';
import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Color(0xff075e55),
        ),
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
      ),
      routes: {
        "/": (context) => const Homepage(),
        "Settings": (context) => const Settings(),
        "/ChatPage": (context) => const ChatPage(),
      },
    );
  }
}
