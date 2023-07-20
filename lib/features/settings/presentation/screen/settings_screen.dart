import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/common/presentation/bloc/user/user_bloc.dart';
import 'package:techx/features/settings/presentation/widgets/settings_items_list.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with AutomaticKeepAliveClientMixin {
  final UserBloc _userBloc = getIt<UserBloc>();

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
        return Stack(
          children: [
            ListView(
              padding: const EdgeInsets.all(8),
              physics: const BouncingScrollPhysics(),
              children: [
                _buildUserWidget(),
                _divider(),
                SettingsItemsList(
                  userBloc: _userBloc,
                ),
              ],
            ),
            if (state.isLoading)
              const Opacity(
                opacity: 0.8,
                child: ModalBarrier(dismissible: false, color: Colors.black),
              ),
            if (state.isLoading)
              const Center(
                child: CircularProgressIndicator(),
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
      subtitle: Text("Beirut, Lebanon"),
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

  @override
  bool get wantKeepAlive => true;
}
