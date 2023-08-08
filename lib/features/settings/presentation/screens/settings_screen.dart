import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techx/core/utils/constant_functions.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/common/presentation/bloc/user/user_bloc.dart';
import 'package:techx/features/settings/presentation/screens/payment_info_screen.dart';
import 'package:techx/features/settings/presentation/screens/profile_screen.dart';
import 'package:techx/features/settings/presentation/screens/settings_contact_screen.dart';
import 'package:techx/features/settings/presentation/screens/settings_faq.dart';
import 'package:techx/features/settings/presentation/screens/settings_main_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with AutomaticKeepAliveClientMixin {
  final UserBloc _userBloc = getIt<UserBloc>();
  late final PageController _controller;
  final ConstantFunctions _urlLauncher = ConstantFunctions();

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider.value(
      value: _userBloc,
      child: SafeArea(
        child: _buildContainer(),
      ),
    );
  }

  Widget _buildContainer() {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Column(
          children: [
            _buildUserWidget(),
            _divider(),
            Expanded(
              child: PageView(
                controller: _controller,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SettingsMainScreen(
                    userBloc: _userBloc,
                    controller: _controller,
                  ),
                  SettingsContactScreen(
                    urlLauncher: _urlLauncher,
                    controller: _controller,
                  ),
                  SettingsFaqScreen(
                    controller: _controller,
                  ),
                  ProfileScreen(
                    controller: _controller,
                  ),
                  PaymentInfoScreen(
                    controller: _controller,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildUserWidget() {
    return const ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/images/mohamad_avatar.png"),
      ),
      title: Text(
        "Mohamad Fakih",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        "Beirut, Lebanon",
      ),
    );
  }

  Widget _divider() {
    return const Padding(
      padding: EdgeInsets.all(
        8.0,
      ),
      child: Divider(
        thickness: 1.5,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
