import 'package:flutter/material.dart';
import 'package:techx/core/utils/global_colors.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    this.isLogin = true,
  });

  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            isLogin ? "Or sign in with" : "Or sign up with",
            style: TextStyle(
              color: GlobalColors.textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildSocialButton(const AssetImage("assets/google_icon.png")),
            _buildSocialButton(const AssetImage("assets/facebook.png")),
            _buildSocialButton(const AssetImage("assets/github.png")),
          ],
        )
      ],
    );
  }

  Container _buildSocialButton(AssetImage image) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image(
        image: image,
        height: 30,
        width: 30,
      ),
    );
  }
}
