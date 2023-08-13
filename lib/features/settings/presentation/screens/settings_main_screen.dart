import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:techx/core/utils/constant_functions.dart';
import 'package:techx/features/common/presentation/bloc/user/user_bloc.dart';
import 'package:techx/features/login/presentation/screen/login_screen.dart';
import 'package:techx/features/settings/presentation/widgets/settings_tile.dart';

class SettingsMainScreen extends StatefulWidget {
  const SettingsMainScreen(
      {super.key, required this.userBloc, required this.controller});

  final UserBloc userBloc;
  final PageController controller;

  @override
  State<SettingsMainScreen> createState() => _SettingsMainScreenState();
}

class _SettingsMainScreenState extends State<SettingsMainScreen> {
  /// Has the url launcher functions
  final ConstantFunctions _urlLauncher = ConstantFunctions();

  @override
  Widget build(BuildContext context) {
    return _buildMainCategory(context);
  }

  Widget _buildMainCategory(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SettingsTile(
            icon: Icons.person_outline,
            color: Colors.purple,
            text: "Personal Info",
            onTap: () {
              _animateToPage(3);
            },
          ),
          const SizedBox(
            height: 16,
          ),
          SettingsTile(
            icon: Icons.person_outline,
            color: Colors.blue,
            text: "Track orders",
            onTap: () {},
          ),
          const SizedBox(
            height: 16,
          ),
          SettingsTile(
            icon: Icons.credit_card,
            color: Colors.pink,
            text: "Payment",
            onTap: () {
              _animateToPage(4);
            },
          ),
          const SizedBox(
            height: 16,
          ),
          SettingsTile(
            icon: Icons.phone,
            color: Colors.green,
            text: "Contact Us",
            onTap: () {
              _animateToPage(1);
            },
          ),
          const SizedBox(
            height: 16,
          ),
          _divider(),
          const SizedBox(
            height: 16,
          ),
          SettingsTile(
            icon: Icons.info_outline,
            color: Colors.blueGrey.shade800,
            text: "FAQs",
            onTap: () {
              _animateToPage(2);
            },
          ),
          const SizedBox(
            height: 16,
          ),
          SettingsTile(
            icon: Icons.policy,
            color: Colors.blueGrey.shade800,
            text: "Privacy Policy",
            onTap: () {
              Uri url =
                  Uri.parse("https://pub.dev/packages/url_launcher/example");
              _urlLauncher.launchInBrowser(url);
            },
          ),
          const SizedBox(
            height: 16,
          ),
          SettingsTile(
            icon: Icons.close,
            color: Colors.blueGrey.shade800,
            text: "Logout",
            onTap: () async {
              widget.userBloc.add(
                const SignOut(),
              );
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                  (route) => false);
            },
          ),
        ]
            .animate(
              interval: const Duration(
                milliseconds: 50,
              ),
            )
            .slideX(),
      ),
    );
  }

  void _animateToPage(int value) => widget.controller.jumpToPage(
        value,
      );
}

Widget _divider() {
  return const Padding(
    padding: EdgeInsets.all(8.0),
    child: Divider(
      thickness: 1.5,
    ),
  );
}
