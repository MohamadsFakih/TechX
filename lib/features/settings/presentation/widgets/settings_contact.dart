import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:techx/core/utils/url_launcher.dart';
import 'package:techx/features/settings/presentation/widgets/settings_tile.dart';

class SettingsContact extends StatelessWidget {
  const SettingsContact(
      {super.key,
      required this.animationController,
      required this.isInitialized,
      required this.showContact,
      required this.urlLauncher});

  final AnimationController animationController;
  final bool isInitialized;
  final bool showContact;
  final UrlLauncher urlLauncher;

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    )
        .animate(
          controller: animationController,
          delay: const Duration(
            milliseconds: 300,
          ),
        )
        .slideX(
          begin: isInitialized
              ? showContact
                  ? 1
                  : 0
              : -1,
          end: isInitialized
              ? showContact
                  ? 0
                  : 1
              : -1,
        );
  }
}
