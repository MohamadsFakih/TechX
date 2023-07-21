import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.icon,
    required this.color,
    required this.text,
    this.onTap,
    this.hideArrow = false,
  });

  final IconData icon;
  final Color color;
  final String text;
  final void Function()? onTap;
  final bool hideArrow;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      highlightColor: color.withOpacity(0.1),
      child: ListTile(
        leading: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(18)),
          child: Icon(
            icon,
            color: color,
          ),
        ),
        title: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        trailing: hideArrow
            ? const SizedBox.shrink()
            : const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 24,
              ),
      ),
    );
  }
}
