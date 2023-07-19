import 'package:flutter/material.dart';
import 'package:techx/features/common/presentation/bloc/user/user_bloc.dart';
import 'package:techx/features/login/presentation/screen/login_screen.dart';
import 'package:techx/features/settings/presentation/widgets/settings_tile.dart';

class SettingsItemsList extends StatelessWidget {
  const SettingsItemsList({super.key, required this.userBloc});

  final UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SettingsTile(
          icon: Icons.person_outline,
          color: Colors.purple,
          text: "Personal Info",
        ),
        const SizedBox(
          height: 16,
        ),
        const SettingsTile(
          icon: Icons.person_outline,
          color: Colors.blue,
          text: "Redeem Code",
        ),
        const SizedBox(
          height: 16,
        ),
        const SettingsTile(
          icon: Icons.credit_card,
          color: Colors.pink,
          text: "Payment",
        ),
        const SizedBox(
          height: 16,
        ),
        const SettingsTile(
          icon: Icons.phone,
          color: Colors.green,
          text: "Contact Us",
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
        ),
        const SizedBox(
          height: 16,
        ),
        SettingsTile(
          icon: Icons.policy,
          color: Colors.blueGrey.shade800,
          text: "Privacy Policy",
        ),
        const SizedBox(
          height: 16,
        ),
        SettingsTile(
          icon: Icons.close,
          color: Colors.blueGrey.shade800,
          text: "Logout",
          onTap: () async {
            userBloc.add(
              const SignOut(),
            );
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (route) => false);
          },
        ),
      ],
    );
  }
}

Widget _divider() {
  return const Padding(
    padding: EdgeInsets.all(8.0),
    child: Divider(
      thickness: 1.5,
    ),
  );
}
