import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
  final UserBloc _userBloc = getIt<UserBloc>();
  bool _shouldNavigateToLogin = true;

  @override
  void initState() {
    super.initState();
    _userBloc.add(const GetUid());
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
          if (state.id.isEmpty) {
            if (_shouldNavigateToLogin) {
              _navigateToLogin();
            }
          } else {
            _navigateToHome();
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

  void _navigateToHome() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => DefaultScreen(
            userId: _userBloc.state.id,
          ),
        ),
        (route) => false,
      );
    });
  }

  void _navigateToLogin() {
    const delayDuration = Duration(seconds: 4);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.delayed(delayDuration, () {
        if (_shouldNavigateToLogin) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const LoginPage(),
            ),
            (route) => false,
          );
        }
      });
    });
  }
}
