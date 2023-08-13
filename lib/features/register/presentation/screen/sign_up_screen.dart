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
import 'package:techx/features/register/domain/entity/register_entity.dart';
import 'package:techx/features/register/presentation/bloc/register_bloc.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
    with TickerProviderStateMixin {
  /// The controller of the email text field
  final TextEditingController emailController = TextEditingController();

  /// The controller of the name text field
  final TextEditingController nameController = TextEditingController();

  /// The controller of the password text field
  final TextEditingController passwordController = TextEditingController();

  /// The controller of the email verify password text field
  final TextEditingController verifyPasswordController =
      TextEditingController();

  /// The controller for the loading animation
  late AnimationController animationController =
      AnimationController(vsync: this);

  /// The instance of [RegisterBloc]
  final RegisterBloc _registerBloc = getIt<RegisterBloc>();

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
      value: _registerBloc,
      child: _buildRegister(),
    );
  }

  Widget _buildRegister() {
    return Scaffold(
      body: Container(
        color: Colors.black.withOpacity(
          0.6,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: SafeArea(
              child: BlocBuilder<RegisterBloc, RegisterState>(
                builder: (context, state) {
                  if (state.error.isNotEmpty) {
                    SchedulerBinding.instance.addPostFrameCallback(
                      (_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          CustomSnackAlert.showErrorSnackBar(
                            state.error,
                          ),
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
                              controller: nameController,
                              hint: "Name",
                              inputType: TextInputType.text,
                              obscure: false,
                              enabled: !state.isLoading,
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
                            LoginTextField(
                              controller: passwordController,
                              hint: "Password",
                              inputType: TextInputType.text,
                              obscure: true,
                              enabled: !state.isLoading,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            LoginTextField(
                              controller: verifyPasswordController,
                              hint: "Verify Password",
                              inputType: TextInputType.text,
                              obscure: true,
                              enabled: !state.isLoading,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            if (state.error.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text(
                                  state.error.replaceAll(
                                    "firebase_auth/",
                                    "",
                                  ),
                                  style: const TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsets.all(
                                12.0,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(
                                        'login',
                                      );
                                    },
                                    child: const Text(
                                      "Already have an account?",
                                      style: TextStyle(color: mainColor),
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                            GlobalButton(
                              text: "Sign Up",
                              onTap: () {
                                _registerBloc.add(
                                  Register(
                                    RegisterEntity(
                                      name: nameController.text.trim(),
                                      email: emailController.text.trim(),
                                      password: passwordController.text.trim(),
                                      retryPassword:
                                          verifyPasswordController.text.trim(),
                                    ),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const SocialButton(
                              isLogin: false,
                            ),
                          ],
                        ),
                      ),
                    ).animate().slideY(
                          duration: const Duration(
                            milliseconds: 500,
                          ),
                        ),
                  ).animate(controller: animationController).shimmer();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
