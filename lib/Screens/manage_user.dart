import 'package:flutter/material.dart';

class ManageUser extends StatefulWidget {
  const ManageUser({super.key});

  @override
  State<ManageUser> createState() => _ManageUserState();
}

class _ManageUserState extends State<ManageUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddUser'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UserBtn(
                path: 'adduser',
                label: 'Add User',
                icon: Icons.arrow_outward_outlined),
            SizedBox(
              height: 30,
            ),
            UserBtn(
                path: 'removeuser', label: 'Remove User', icon: Icons.delete),
          ],
        ),
      ),
    );
  }
}

class UserBtn extends StatelessWidget {
  const UserBtn({
    required this.path,
    required this.label,
    this.icon,
    super.key,
  });
  final String label;
  final String path;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, path),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 18, 58, 20),
              Color.fromARGB(255, 33, 42, 27),
            ]),
            border: Border.all(
                color: Colors.white10,
                width: 0.7,
                strokeAlign: BorderSide.strokeAlignOutside),
            borderRadius: BorderRadius.circular(7)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                label,
                style: const TextStyle(
                    color: Color.fromARGB(220, 255, 255, 255),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                icon,
                color: const Color.fromARGB(255, 208, 179, 133),
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
