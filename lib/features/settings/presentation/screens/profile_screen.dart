import 'package:flutter/material.dart';
import 'package:techx/features/common/presentation/widget/global_button.dart';
import 'package:techx/features/common/presentation/widget/login_text_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.controller});

  final PageController controller;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            widget.controller.jumpToPage(
              0,
            );
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        physics: const BouncingScrollPhysics(),
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/mohamad_avatar.png"),
            radius: 60,
          ),
          const SizedBox(
            height: 32,
          ),
          LoginTextField(
            controller: _nameController,
            hint: "Username",
            inputType: TextInputType.text,
            obscure: false,
          ),
          const SizedBox(
            height: 32,
          ),
          LoginTextField(
            controller: _nameController,
            hint: "Address",
            inputType: TextInputType.text,
            obscure: false,
          ),
          const SizedBox(
            height: 32,
          ),
          const GlobalButton(text: "Update"),
        ],
      ),
    );
  }
}
