import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techx/core/utils/global_colors.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/login/data/model/login_credentials.dart';
import 'package:techx/features/login/presentation/bloc/login_bloc.dart';
import 'package:techx/features/login/presentation/widget/global_button.dart';
import 'package:techx/features/login/presentation/widget/login_text_field.dart';
import 'package:techx/features/login/presentation/widget/social_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late AnimationController animationController =
      AnimationController(vsync: this);
  final LoginBloc _loginBloc = getIt<LoginBloc>();
  ValueNotifier<bool> isChecked = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this);
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
      child: Scaffold(
        body: Container(
          color: Colors.black.withOpacity(.6),
          child: Center(
            child: SingleChildScrollView(
              child: SafeArea(child: BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    animationController.repeat(
                        period: const Duration(milliseconds: 500));
                  } else {
                    animationController.reset();
                  }
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.white,
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text(
                              "TechX",
                              style: TextStyle(
                                  color: GlobalColors.mainColor,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Login to your account",
                                style: TextStyle(
                                  color: GlobalColors.textColor,
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
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            LoginTextField(
                              controller: passwordController,
                              hint: "Password",
                              inputType: TextInputType.text,
                              obscure: true,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            if (state.error.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text(
                                  state.error.replaceAll("firebase_auth/", ""),
                                  style: const TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ValueListenableBuilder<bool>(
                                valueListenable: isChecked,
                                builder: (context, value, child) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Checkbox(
                                        value: isChecked.value,
                                        onChanged: (b) {
                                          isChecked.value = b!;
                                        },
                                      ),
                                      Text(
                                        "Remember me",
                                        style: TextStyle(
                                            color: GlobalColors.mainColor),
                                      )
                                    ],
                                  );
                                }),
                            GlobalButton(
                              text: "Sign In",
                              onTap: () {
                                _loginBloc.add(SignIn(LoginCredentials(
                                    email: emailController.text.trim(),
                                    password: passwordController.text.trim())));
                              },
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const SocialButton(),
                          ],
                        ),
                      ),
                    ).animate().slideY(duration: Duration(milliseconds: 500)),
                  ).animate(controller: animationController).shimmer();
                },
              )),
            ),
          ),
        ),
      ),
    );
  }
}
