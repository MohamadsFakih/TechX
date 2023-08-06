import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/common/presentation/bloc/user/user_bloc.dart';
import 'package:techx/features/default/presentation/screen/default_screen.dart';
import 'package:techx/features/login/presentation/screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /// The instance of [UserBloc]
  final UserBloc _userBloc = getIt<UserBloc>();

  /// To check if the screen should go the login page
  bool _shouldNavigateToLogin = true;

  @override
  void initState() {
    super.initState();
    _userBloc.add(
      const GetUid(),
    );
  }

  @override
  void dispose() {
    _shouldNavigateToLogin = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _userBloc,
      child: BlocListener<UserBloc, UserState>(
        listener: (context, state) {
          if (!state.isLoading) {
            Future.delayed(
              const Duration(
                seconds: 2,
              ),
              () {
                if (!_isLoggedIn(state)) {
                  _navigateToLogin();
                } else {
                  _navigateToHome(
                    state.id,
                  );
                }
              },
            );
          }
        },
        child: const Scaffold(
          backgroundColor: mainColor,
          body: Center(
            child: Text(
              'TechX',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Checks if the user is logged in by checking the user id
  bool _isLoggedIn(UserState state) {
    return state.id.isNotEmpty;
  }

  /// Navigates to the home screen
  void _navigateToHome(String userId) {
    if (_shouldNavigateToLogin) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => DefaultScreen(
            userId: userId,
          ),
        ),
        (route) => false,
      );
    }
  }

  void _navigateToLogin() {
    if (_shouldNavigateToLogin) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
        (route) => false,
      );
    }
  }
}
