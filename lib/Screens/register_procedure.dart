import 'package:flutter/material.dart';
import 'package:wubamlak/Form/form_validation.dart';
import '../utils/text_theme.dart';

final GlobalKey<FormState> formKey = GlobalKey<FormState>();

class RegisterProcedure extends StatefulWidget {
  const RegisterProcedure({super.key});

  @override
  State<RegisterProcedure> createState() => _RegisterProcedureState();
}

final List gender = ['Male', 'Female'];

class _RegisterProcedureState extends State<RegisterProcedure> {
  var currentGender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterProcedure'),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Center(
          child: Container(
            color: const Color.fromARGB(255, 56, 75, 80),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Container(
                  // height: MediaQuery.of(context).size.height * 0.4,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Form(
                          key: formKey,
                          child: Column(
                            children: [
                              TextFieldCT(labelText: 'Name:'),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFieldCT(labelText: 'MRN:'),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFieldCT(
                                labelText: 'Age:',
                                inputType: TextInputType.number,
                                validate: FormValidation.validateAge,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              //sex
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Sex:',
                                  style:
                                      RegsitrationTheme.textTheme.displayMedium,
                                ),
                              ),
                              ListTile(
                                title: Text(gender[0]),
                                leading: Radio(
                                    activeColor:
                                        const Color.fromARGB(255, 92, 162, 183),
                                    value: gender[0],
                                    groupValue: currentGender,
                                    onChanged: (value) => setState(() {
                                          currentGender = value;
                                        })),
                              ),
                              ListTile(
                                title: Text(gender[1]),
                                leading: Radio(
                                    activeColor:
                                        const Color.fromARGB(255, 92, 162, 183),
                                    value: gender[1],
                                    groupValue: currentGender,
                                    onChanged: (value) => setState(() {
                                          currentGender = value;
                                        })),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFieldCT(labelText: 'Clinical Presention:'),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFieldCT(labelText: 'Diagnosis:'),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFieldCT(labelText: 'Image Finding:'),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFieldCT(labelText: 'Surgeon:'),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFieldCT(labelText: 'Assistant:'),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFieldCT(labelText: 'Ansthesia:'),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFieldCT(labelText: 'Nurse:'),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFieldCT(labelText: 'Duration Of Surgery:'),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFieldCT(labelText: 'Duration Of Ansthesia:'),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFieldCT(labelText: 'Outcome Of Patient:'),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFieldCT(labelText: 'Remark:'),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print(formKey.currentState!.validate());
                    if (formKey.currentState!.validate()) {
                      const snackBar =
                          SnackBar(content: Text('Submmiting form'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 34, 101, 84),
                          Color.fromARGB(255, 35, 149, 124)
                        ])),
                    child: const Text(
                      'Register',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFieldCT extends StatelessWidget {
  TextFieldCT(
      {super.key,
      this.icon,
      required this.labelText,
      this.inputType = TextInputType.text,
      this.validate = FormValidation.validateText});

  final IconData? icon;
  final String labelText;
  final TextInputType inputType;
  final FormFieldValidator<String>? validate;
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTextStyle(
        style: RegsitrationTheme.textTheme.displayMedium!,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              labelText,
              // style: RegsitrationTheme.textTheme.displayMedium,
            ),
            const SizedBox(height: 10),
            TextFormField(
              validator: validate,
              keyboardType: inputType,
              cursorColor: Colors.black54,
              style: const TextStyle(color: Colors.black, height: 0.5),
              cursorHeight: 18,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                errorStyle: const TextStyle(height: 0.1),
                constraints: const BoxConstraints(maxHeight: 43),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular((10))),
                // enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 124, 163, 182),
                      strokeAlign: BorderSide.strokeAlignOutside,
                      width: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
