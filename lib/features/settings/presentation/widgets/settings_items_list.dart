import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:techx/core/utils/url_launcher.dart';
import 'package:techx/features/common/presentation/bloc/user/user_bloc.dart';
import 'package:techx/features/login/presentation/screen/login_screen.dart';
import 'package:techx/features/settings/presentation/widgets/settings_tile.dart';

class SettingsItemsList extends StatefulWidget {
  const SettingsItemsList({super.key, required this.userBloc});

  final UserBloc userBloc;

  @override
  State<SettingsItemsList> createState() => _SettingsItemsListState();
}

class _SettingsItemsListState extends State<SettingsItemsList>
    with TickerProviderStateMixin {
  ValueNotifier<bool> showSub = ValueNotifier(false);
  ValueNotifier<bool> isInitialized = ValueNotifier(false);
  final UrlLauncher _urlLauncher = UrlLauncher();

  late final AnimationController _animationController;
  late final AnimationController _subAnimationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _subAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    _subAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _buildMainCategory(context);
  }

  Widget _buildMainCategory(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        bool shouldPop = !showSub.value;
        showSub.value = false;
        if (!shouldPop) {
          _subAnimationController.reset();
          _subAnimationController.forward();
          _animationController.reset();
          _animationController.forward();
        }

        return Future.value(shouldPop);
      },
      child: ValueListenableBuilder<bool>(
          valueListenable: showSub,
          builder: (context, value, child) {
            return Stack(
              children: [
                Column(children: [
                  SettingsTile(
                    icon: Icons.person_outline,
                    color: Colors.purple,
                    text: "Personal Info",
                    onTap: () {
                      Navigator.of(context).pushNamed('profile');
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SettingsTile(
                    icon: Icons.person_outline,
                    color: Colors.blue,
                    text: "Redeem Code",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SettingsTile(
                    icon: Icons.credit_card,
                    color: Colors.pink,
                    text: "Payment",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SettingsTile(
                    icon: Icons.phone,
                    color: Colors.green,
                    text: "Contact Us",
                    onTap: () {
                      showSub.value = true;
                      isInitialized.value = true;

                      _animationController.reset();
                      _animationController.forward();
                      _subAnimationController.reset();
                      _subAnimationController.forward();
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
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SettingsTile(
                    icon: Icons.policy,
                    color: Colors.blueGrey.shade800,
                    text: "Privacy Policy",
                    onTap: () {
                      Uri url = Uri.parse(
                          "https://pub.dev/packages/url_launcher/example");
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
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                          (route) => false);
                    },
                  )
                ]).animate(controller: _animationController).slideX(
                      begin: showSub.value ? 0 : 1,
                      end: showSub.value ? 1 : 0,
                    ),
                Column(
                  children: [
                    SettingsTile(
                      icon: Icons.person_outline,
                      color: Colors.green,
                      text: "Whatsapp",
                      onTap: () {
                        _urlLauncher.launchWhatsApp();
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
                        _urlLauncher.launchPhone();
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
                        _urlLauncher.launchEmail();
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                )
                    .animate(
                        controller: _subAnimationController,
                        delay: const Duration(milliseconds: 500))
                    .slideX(
                      begin: isInitialized.value
                          ? showSub.value
                              ? -1
                              : 0
                          : -1,
                      end: isInitialized.value
                          ? showSub.value
                              ? 0
                              : -1
                          : -1,
                    ),
              ],
            );
          }),
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
