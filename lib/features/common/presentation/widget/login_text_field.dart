import 'package:flutter/material.dart';

class LoginTextField extends StatefulWidget {
  const LoginTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.inputType,
    required this.obscure,
    this.enabled = true,
  });

  final TextEditingController controller;
  final String hint;
  final TextInputType inputType;
  final bool obscure;
  final bool enabled;

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
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
          ]),
      child: TextFormField(
        keyboardType: widget.inputType,
        controller: widget.controller,
        obscureText: widget.obscure,
        enabled: widget.enabled,
        decoration: InputDecoration(
          hintText: widget.hint,
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
