import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techx/core/utils/global_colors.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/common/presentation/bloc/user/user_bloc.dart';
import 'package:techx/features/home/presentation/screen/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final UserBloc _userBloc = getIt<UserBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _userBloc,
      child: _build(),
    );
  }

  Widget _build() {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state.isSignedIn) {
          _navigateToHome();
        }
      },
      child: AnimatedSplashScreen(
        splash: const Text(
          "TechX",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
        backgroundColor: GlobalColors.mainColor,
        nextScreen: const HomePage(),
        duration: 2000,
      ),
    );
  }

  _navigateToHome() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const HomePage()),
          (route) => false);
    });
  }
}
