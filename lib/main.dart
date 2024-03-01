import 'package:flutter/material.dart';
import 'package:onboarding_screen/screen/home_screen.dart';
import 'package:onboarding_screen/screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

bool show = true; //ประกาศแบบ global

void main() async {
  //เพิ่ม async
  WidgetsFlutterBinding.ensureInitialized(); //สร้างจนแน่ใจว่าเสร็จแล้ว
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ??
      true; //Onboarding เป็นชื่อตัวแปล คือ key ที่ยังไม่ได้มัีการใส่ค่าแต่อ้างถึง
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding Screen',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      //home: IntroScreen(),
      home: show ? IntroScreen() : HomeScreen(),
    );
  }
}
