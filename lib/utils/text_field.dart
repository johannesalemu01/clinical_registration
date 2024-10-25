import 'package:flutter/material.dart';
import 'package:wubamlak/Form/form_validation.dart';

class TextFieldCT extends StatefulWidget {
  const TextFieldCT({
    super.key,
    required this.icon,
    this.suffixIcon,
    required this.hint,
    this.isPassword = false,
    this.validate = FormValidation.validateText,
  });
  final IconData icon;
  final IconData? suffixIcon;
  final String hint;
  final bool isPassword;
  final FormFieldValidator<String>? validate;
  @override
  State<TextFieldCT> createState() => _TextFieldCMState();
}

class _TextFieldCMState extends State<TextFieldCT> {
  bool isHidden = true;

  @override
  void initState() {
    super.initState();
    isHidden = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validate,
      obscureText: isHidden,
      cursorHeight: 20,
      cursorColor: Colors.grey,
      style: const TextStyle(color: Colors.black87, height: 2),
      decoration: InputDecoration(
        prefixIcon: Icon(
          widget.icon,
          size: 26,
          color: const Color.fromARGB(255, 103, 130, 205),
        ),
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isHidden = !isHidden;
              });
            },
            icon: widget.isPassword
                ? Icon(isHidden
                    ? Icons.visibility_rounded
                    : Icons.visibility_off_outlined)
                : Icon(widget.suffixIcon),
            color: const Color.fromARGB(255, 103, 130, 205)),
        fillColor: Colors.white,
        filled: true,
        border: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5)),
        hintText: widget.hint,
        hintStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
