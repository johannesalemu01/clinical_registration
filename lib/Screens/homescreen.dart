import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 45,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 19, 37, 37),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        // color: Color.fromARGB(255, 17, 18, 19),
                        color: Color.fromARGB(255, 194, 205, 216),
                      ),
                      text:
                          'Tikur Anbessa Specialized Hospital\n'.toUpperCase(),
                      children: [
                        TextSpan(
                          text: ' neuroSurgery'.toUpperCase(),
                          style: const TextStyle(
                            color: Color.fromARGB(255, 209, 146, 101),
                            // color: Color.fromARGB(255, 80, 35, 3),
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: ' Online data link'.toUpperCase(),
                          style: const TextStyle(
                            color: Color.fromARGB(255, 194, 205, 216),
                          ),
                        )
                      ]),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Card(
              color: Color.fromARGB(135, 49, 90, 111),
              elevation: 8,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 70),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomeButtons(
                      labelhead: 'Register Surgical \nProcedure',
                      // labelAlt: '(TASH)',
                      path: 'registerProcedure',
                      icon: FontAwesomeIcons.brain,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    HomeButtons(
                      labelhead: 'View Surgial \nLogBook',
                      path: 'viewLogbook',
                      icon: FontAwesomeIcons.usersViewfinder,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    HomeButtons(
                      labelhead: 'Download Surgial \nLogBook',
                      // labelAlt: '(TASH)',
                      path: 'downloadLogbook',

                      icon: FontAwesomeIcons.download,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    HomeButtons(
                      labelhead: 'AddUser',
                      path: 'addUser',
                      icon: FontAwesomeIcons.userPlus,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    HomeButtons(
                      labelhead: 'ManageAccount',
                      path: 'manageAccount',
                      icon: FontAwesomeIcons.userGear,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeButtons extends StatelessWidget {
  const HomeButtons({
    super.key,
    required this.labelhead,
    // this.labelAlt,
    required this.path,
    required this.icon,
  });

  final String labelhead;
  // final String? labelAlt;
  final String path;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.white,
      splashColor: const Color.fromARGB(255, 77, 144, 177),
      borderRadius: BorderRadius.circular(7),
      onTap: () => Navigator.pushNamed(context, path),
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 250,
        decoration: BoxDecoration(
          color: const Color.fromARGB(223, 2, 48, 71),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: const Color.fromARGB(255, 159, 201, 193),
              ),
              const SizedBox(
                width: 35,
              ),
              Text(
                labelhead,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
