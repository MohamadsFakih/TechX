import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.inputType,
    required this.obscure,
    this.enabled = true,
    this.suffix = const SizedBox(),
  });

  final TextEditingController controller;
  final String hint;
  final TextInputType inputType;
  final bool obscure;
  final bool enabled;
  final Widget suffix;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          8,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(
              0.1,
            ),
            blurRadius: 7,
          )
        ],
      ),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        keyboardType: inputType,
        controller: controller,
        obscureText: obscure,
        enabled: enabled,
        decoration: InputDecoration(
          suffixIcon: suffix,
          hintText: hint,
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
          hintStyle: const TextStyle(
            height: 1,
          ),
        ),
      ),
    );
  }
}
