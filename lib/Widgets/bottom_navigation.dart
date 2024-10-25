import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:wubamlak/Screens/manage_user.dart';
import 'package:wubamlak/Screens/manage_account.dart';
import 'package:wubamlak/Screens/register_procedure.dart';
import 'package:wubamlak/Screens/download_logbook.dart';
import 'package:wubamlak/Screens/view_logbook.dart';
import 'package:wubamlak/Screens/homescreen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;

  List<Widget> pages = [
    const Homescreen(),
    const RegisterProcedure(),
    const ViewLogBook(),
    const DownloadLogBook(),
    const ManageUser(),
    const ManageAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: GNav(

              onTabChange: (index) => {
                    setState(() {
                      currentIndex = index;
                    })
                  },
              padding: const EdgeInsets.all(15),
              tabBackgroundColor: const Color.fromARGB(80, 116, 168, 194),
              backgroundColor: Colors.black,
              color: const Color.fromARGB(255, 159, 201, 193),
              activeColor: Colors.white,
              iconSize: 20,
              gap: 12,
              tabs: const [
                GButton(
                  icon: FontAwesomeIcons.house,
                  text: 'Home',
                ),
                GButton(
                  icon: FontAwesomeIcons.pen,
                  text: 'Register',
                ),
                GButton(
                  icon: FontAwesomeIcons.usersViewfinder,
                  text: 'View',
                ),
                GButton(
                  icon: FontAwesomeIcons.download,
                  text: 'Download',
                ),
                GButton(
                  icon: FontAwesomeIcons.userPlus,
                  text: 'AddUser',
                ),
              ]),
        ),
      ),
      body: pages[currentIndex],
    );
  }
}
