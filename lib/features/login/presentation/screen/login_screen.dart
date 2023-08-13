import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/common/domain/entity/snackbar.dart';
import 'package:techx/features/common/presentation/widget/global_button.dart';
import 'package:techx/features/common/presentation/widget/login_text_field.dart';
import 'package:techx/features/common/presentation/widget/social_button.dart';
import 'package:techx/features/default/presentation/screen/default_screen.dart';

import 'package:techx/features/login/data/model/login_credentials.dart';
import 'package:techx/features/login/presentation/bloc/login_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  /// The controller for the email text field
  final TextEditingController emailController = TextEditingController();

  /// The controller for the password text field
  final TextEditingController passwordController = TextEditingController();

  /// The controller for the loading animation
  late AnimationController animationController =
      AnimationController(vsync: this);

  /// The instance of [LoginBloc]
  final LoginBloc _loginBloc = getIt<LoginBloc>();

  /// The bool to check if the remember me box is ticked
  ValueNotifier<bool> _isChecked = ValueNotifier(false);

  /// Checks if the user already entered the page
  bool firstEnter = false;

  /// To show or obscure the password field
  ValueNotifier<bool> _obscure = ValueNotifier(true);

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
    );
    _loginBloc.add(
      GetLoginCredentials(),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _loginBloc,
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.loginCredentials.isRemembered) {
            emailController.text = state.loginCredentials.email;
            passwordController.text = state.loginCredentials.password;
            if (!firstEnter) {
              _isChecked.value = state.loginCredentials.isRemembered;
            }
            firstEnter = true;
          }
          if (state.error.isNotEmpty) {
            SchedulerBinding.instance.addPostFrameCallback(
              (_) {
                ScaffoldMessenger.of(context).showSnackBar(
                  CustomSnackAlert.showErrorSnackBar(state.error),
                );
              },
            );
          }
          if (state.signedIn) {
            SchedulerBinding.instance.addPostFrameCallback(
              (_) {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => DefaultScreen(
                      userId: state.userId,
                    ),
                  ),
                  (route) => false,
                );
              },
            );
          }
          if (state.isLoading) {
            animationController.repeat(
              period: const Duration(
                milliseconds: 500,
              ),
            );
          } else {
            animationController.reset();
          }
        },
        child: _buildLogin(),
      ),
    );
  }

  Widget _buildLogin() {
    return Scaffold(
      body: Container(
        color: blackColor.withOpacity(
          .6,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: SafeArea(
              child: BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.all(
                      8.0,
                    ),
                    child: Card(
                      color: whiteColor,
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(
                          16,
                        ),
                        child: Column(
                          children: [
                            const Text(
                              "TechX",
                              style: TextStyle(
                                color: mainColor,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Login to your account",
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            LoginTextField(
                              controller: emailController,
                              hint: "Email",
                              inputType: TextInputType.emailAddress,
                              obscure: false,
                              enabled: !state.isLoading,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            ValueListenableBuilder(
                              valueListenable: _obscure,
                              builder: (context, value, _) {
                                return LoginTextField(
                                  controller: passwordController,
                                  hint: "Password",
                                  suffix: IconButton(
                                    onPressed: () {
                                      _obscure.value = !_obscure.value;
                                    },
                                    icon: Icon(
                                      !value
                                          ? Icons.remove_red_eye_outlined
                                          : Icons.remove_red_eye,
                                    ),
                                  ),
                                  inputType: TextInputType.text,
                                  obscure: value,
                                  enabled: !state.isLoading,
                                );
                              },
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            ValueListenableBuilder<bool>(
                              valueListenable: _isChecked,
                              builder: (context, value, child) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        _loginBloc.add(
                                          SendPasswordReset(
                                            emailController.text.trim(),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        "Forgot password?",
                                        style: TextStyle(color: mainColor),
                                      ),
                                    ),
                                    const Spacer(),
                                    Checkbox(
                                      value: _isChecked.value,
                                      onChanged: (b) {
                                        _isChecked.value = b!;
                                      },
                                    ),
                                    const Text(
                                      "Remember me",
                                      style: TextStyle(color: mainColor),
                                    )
                                  ],
                                );
                              },
                            ),
                            GlobalButton(
                              text: "Sign In",
                              onTap: () {
                                _loginBloc.add(
                                  SignIn(
                                    LoginCredentials(
                                      email: emailController.text.trim(),
                                      password: passwordController.text.trim(),
                                      isRemembered: _isChecked.value,
                                    ),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                  'signUp',
                                );
                              },
                              child: const Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  color: mainColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const SocialButton(),
                          ],
                        ),
                      ),
                    ).animate().slideY(
                          duration: const Duration(milliseconds: 500),
                        ),
                  )
                      .animate(
                        controller: animationController,
                      )
                      .shimmer();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
