import 'package:flutter/material.dart';

class CustomSnackAlert {
  static SnackBar showErrorSnackBar(String message) {
    return SnackBar(
      content: Text(
        message.replaceAll("firebase_auth/", ""),
      ),
      duration: const Duration(seconds: 2),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );
  }
// ... another snackbar
}
