import 'package:flutter/material.dart';

final _formKey = GlobalKey();

class ManagePassword extends StatefulWidget {
  const ManagePassword({super.key});

  @override
  State<ManagePassword> createState() => _ManagePasswordState();
}

class _ManagePasswordState extends State<ManagePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        children: [
          Container(
            color: const Color.fromARGB(226, 53, 73, 64),
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 100),
                  child: Form(
                    key: _formKey,
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        TextFieldPass(
                          hint: 'CurrentPassword',
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFieldPass(hint: 'NewPassword'),
                        SizedBox(
                          height: 30,
                        ),
                        TextFieldPass(hint: 'ConfirmNewPassword')
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 350,
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(255, 26, 83, 69),
                        Color.fromARGB(255, 41, 176, 147)
                      ])),
                  child: const Text(
                    'Change Password',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    ));
  }
}

class TextFieldPass extends StatefulWidget {
  const TextFieldPass({
    super.key,
    required this.hint,
  });
  final String hint;

  @override
  State<TextFieldPass> createState() => _TextFieldPassState();
}

class _TextFieldPassState extends State<TextFieldPass> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isHidden,
      cursorHeight: 20,
      cursorColor: Colors.grey,
      style: const TextStyle(color: Colors.black87, height: 2),
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.lock,
          size: 24,
          color: Color.fromARGB(207, 103, 130, 205),
        ),
        suffixIcon: IconButton(
          onPressed: () => {
            setState(() {
              isHidden = !isHidden;
            })
          },
          icon: Icon(
            isHidden ? Icons.visibility_off : Icons.visibility,
          ),
          iconSize: 22,
          color: const Color.fromARGB(186, 103, 130, 205),
        ),
        fillColor: Colors.white,
        filled: true,
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 1, color: Color.fromARGB(255, 20, 97, 45)),
            borderRadius: BorderRadius.circular(10)),
        border: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.7),
            borderRadius: BorderRadius.circular(10)),
        hintText: widget.hint,
        hintStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
