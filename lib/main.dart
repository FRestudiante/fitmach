import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


import 'package:fitmach/screens/add_name_page.dart';
import 'package:fitmach/screens/home_page.dart';
import 'package:fitmach/screens/Bienvenida.dart';
import 'screens/Dashboard.dart';
import 'package:fitmach/screens/profile_screen.dart';
import 'package:fitmach/screens/retos_grupales.dart';
import 'package:fitmach/screens/rutinas_sugeridas.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
 runApp(const MyApp());
 }

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitmach',
      theme: ThemeData(
        primarySwatch: Colors.blue, 
        scaffoldBackgroundColor: Colors.white, 
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Bienvenida(), 
        '/home': (context) => const Dashboard(),
        '/home_page': (context) => const Home(),
        '/add' : (context) => const AddNamePage(),
        '/profile': (context) => const ProfileScreen(),
        '/challenges': (context) => const RetosGrupales(),
        '/routines': (context) => const RutinasSugeridas(),


      },
    );
  }
}

