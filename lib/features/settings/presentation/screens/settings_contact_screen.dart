import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:techx/core/utils/constant_functions.dart';
import 'package:techx/features/settings/presentation/widgets/settings_tile.dart';

class SettingsContactScreen extends StatelessWidget {
  const SettingsContactScreen({
    super.key,
    required this.urlLauncher,
    required this.controller,
  });

  final ConstantFunctions urlLauncher;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SettingsTile(
              icon: Icons.person_outline,
              color: Colors.green,
              text: "Whatsapp",
              onTap: () {
                urlLauncher.launchWhatsApp();
              },
            ),
            const SizedBox(
              height: 16,
            ),
            SettingsTile(
              icon: Icons.phone,
              color: Colors.blueGrey,
              text: "Phone Number",
              onTap: () {
                urlLauncher.launchPhone();
              },
            ),
            const SizedBox(
              height: 16,
            ),
            SettingsTile(
              icon: Icons.email,
              color: Colors.red,
              text: "Email",
              onTap: () {
                urlLauncher.launchEmail();
              },
            ),
            const SizedBox(
              height: 16,
            ),
            SettingsTile(
              icon: Icons.arrow_back,
              color: Colors.black,
              text: "Back",
              hideArrow: true,
              onTap: () {
                controller.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
          ]
              .animate(
                interval: const Duration(
                  milliseconds: 50,
                ),
              )
              .slideX(),
        ),
      ),
    );
  }
}
