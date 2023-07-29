import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techx/core/utils/constant_functions.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/common/presentation/bloc/user/user_bloc.dart';
import 'package:techx/features/login/presentation/screen/login_screen.dart';
import 'package:techx/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:techx/features/settings/presentation/widgets/settings_contact.dart';
import 'package:techx/features/settings/presentation/widgets/settings_faq.dart';
import 'package:techx/features/settings/presentation/widgets/settings_tile.dart';

class SettingsItemsList extends StatefulWidget {
  const SettingsItemsList({super.key, required this.userBloc});

  final UserBloc userBloc;

  @override
  State<SettingsItemsList> createState() => _SettingsItemsListState();
}

class _SettingsItemsListState extends State<SettingsItemsList>
    with TickerProviderStateMixin {
  final SettingsBloc _settingsBloc = getIt<SettingsBloc>();
  ValueNotifier<bool> isContactInitialized = ValueNotifier(false);

  ValueNotifier<bool> isFaqInitialized = ValueNotifier(false);

  final ConstantFunctions _urlLauncher = ConstantFunctions();

  late final AnimationController _animationController;
  late final AnimationController _subAnimationController;
  late final AnimationController _faqAnimationController;

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
    _faqAnimationController = AnimationController(
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
    return BlocProvider.value(
      value: _settingsBloc,
      child: _buildMainCategory(context),
    );
  }

  Widget _buildMainCategory(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () {
            bool shouldPop = !state.showFaq && !state.showContact;

            if (!shouldPop) {
              _playAnimation(_animationController);
              if (state.showFaq) {
                _playAnimation(_faqAnimationController);
              } else {
                _playAnimation(_subAnimationController);
              }
            }
            _settingsBloc.add(const NavigateToMain());

            return Future.value(shouldPop);
          },
          child: Stack(
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
                    _playAnimation(_animationController);
                    _playAnimation(_subAnimationController);
                    isContactInitialized.value = true;

                    _settingsBloc.add(const NavigateToContact());
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
                    _settingsBloc.add(const NavigateToFaq());
                    isFaqInitialized.value = true;

                    _playAnimation(_animationController);
                    _playAnimation(_faqAnimationController);
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
              ])
                  .animate(
                    controller: _animationController,
                  )
                  .slideX(
                    begin: !state.showMain ? 0 : -1,
                    end: !state.showMain ? -1 : 0,
                  ),
              SettingsContact(
                animationController: _subAnimationController,
                isInitialized: isContactInitialized.value,
                showContact: state.showContact,
                urlLauncher: _urlLauncher,
                settingsBloc: _settingsBloc,
                playAnimation: _playAnimation,
                mainController: _animationController,
              ),
              SettingsFaq(
                animationController: _faqAnimationController,
                isInitialized: isFaqInitialized.value,
                showFaq: state.showFaq,
                mainController: _animationController,
                settingsBloc: _settingsBloc,
                playAnimation: _playAnimation,
              )
            ],
          ),
        );
      },
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

void _playAnimation(AnimationController controller) {
  controller.reset();
  controller.forward();
}
