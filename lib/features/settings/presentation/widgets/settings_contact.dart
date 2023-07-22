import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:techx/core/utils/constant_functions.dart';
import 'package:techx/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:techx/features/settings/presentation/widgets/settings_tile.dart';

class SettingsContact extends StatelessWidget {
  const SettingsContact({
    super.key,
    required this.animationController,
    required this.isInitialized,
    required this.showContact,
    required this.urlLauncher,
    required this.settingsBloc,
    required this.playAnimation,
    required this.mainController,
  });

  final AnimationController animationController;
  final AnimationController mainController;
  final bool isInitialized;
  final bool showContact;
  final ConstantFunctions urlLauncher;
  final SettingsBloc settingsBloc;
  final void Function(AnimationController) playAnimation;

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
        SettingsTile(
          icon: Icons.arrow_back,
          color: Colors.black,
          text: "Back",
          hideArrow: true,
          onTap: () {
            settingsBloc.add(
              const NavigateToMain(),
            );
            playAnimation(animationController);
            playAnimation(mainController);
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
