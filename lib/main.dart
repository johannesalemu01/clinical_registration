import 'package:flutter/material.dart';
import 'package:wubamlak/Auth/login.dart';
import 'package:wubamlak/Auth/signup.dart';
import 'package:wubamlak/Screens/add_user.dart';
import 'package:wubamlak/Screens/manage_password.dart';
import 'package:wubamlak/Screens/manage_user.dart';
import 'package:wubamlak/Screens/manage_account.dart';
import 'package:wubamlak/Screens/register_procedure.dart';
import 'package:wubamlak/Screens/remove_user.dart';
import 'package:wubamlak/Screens/view_logbook.dart';
import 'package:wubamlak/Screens/download_logbook.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 113, 131, 127),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 139, 168, 148),
          ),
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: Colors.white, displayColor: Colors.black)),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        'registerProcedure': (context) => const RegisterProcedure(),
        'viewLogbook': (context) => const ViewLogBook(),
        'downloadLogbook': (context) => const DownloadLogBook(),
        'addUser': (context) => const ManageUser(),
        'manageAccount': (context) => const ManageAccount(),
        'signin': (context) => const Login(),
        'signup': (context) => const Signup(),
        'adduser': (context) => const AddUser(),
        'removeuser': (context) => const RemoveUser(),
        'managepassword': (context) => const ManagePassword(),
      },
      home: const Scaffold(
        body: Login(),
        // body: BottomNavigation(),
      ),
    );
  }
}
