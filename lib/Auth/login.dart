import 'package:flutter/material.dart';
import 'package:wubamlak/Form/form_validation.dart';
import 'package:wubamlak/utils/text_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcaf0f8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/background.png',
                ),
                Positioned(
                    left: 30, child: Image.asset('assets/images/light-1.png')),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.6,
                  child: Image.asset('assets/images/light-2.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  const Text(
                    'WELCOME BACK',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const TextFieldCT(icon: Icons.email, hint: 'Email'),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextFieldCT(
                    validate: FormValidation.validatePassword,
                    isPassword: true,
                    icon: Icons.password_outlined,
                    hint: 'Password',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'signup');
                      },
                      child: RichText(
                        text: const TextSpan(
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                            ),
                            text: 'don\'t have an account? ',
                            children: [
                              TextSpan(
                                text: 'SignUp',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 111, 0),
                                    fontWeight: FontWeight.w400),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 77, 105, 182),
                    Color.fromARGB(255, 127, 153, 224),
                  ],
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15),
                child: Text(
                  'SignIn',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
