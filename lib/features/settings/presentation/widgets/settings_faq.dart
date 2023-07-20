import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:techx/core/utils/mds.dart';

class SettingsFaq extends StatelessWidget {
  const SettingsFaq(
      {super.key,
      required this.animationController,
      required this.isInitialized,
      required this.showFaq});

  final AnimationController animationController;
  final bool isInitialized;
  final bool showFaq;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Accordion(
          headerBackgroundColorOpened: Colors.black54,
          scaleWhenAnimating: true,
          openAndCloseAnimation: true,
          headerPadding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
          sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
          sectionClosingHapticFeedback: SectionHapticFeedback.light,
          children: [
            AccordionSection(
              isOpen: true,
              leftIcon: const Icon(Icons.monetization_on, color: Colors.white),
              headerBackgroundColor: Colors.grey,
              headerBackgroundColorOpened: redColor,
              header: const Text(
                'Can I pay in cash?',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              content: const Text(
                "Unfortunately, we only support online payment through credit card or prepaid cards.",
              ),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,
              contentBorderColor: redColor,
            ),
            AccordionSection(
              isOpen: true,
              leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
              headerBackgroundColor: Colors.grey,
              headerBackgroundColorOpened: redColor,
              header: const Text(
                'Can I return a product after purchasing?',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              content: const Text(
                "Yes you may have a refund and return the product withing 30 days "
                "after buying it, you may not return the product after 30 days have passed.",
              ),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,
              contentBorderColor: redColor,
            ),
            AccordionSection(
              isOpen: true,
              leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
              headerBackgroundColor: Colors.grey,
              headerBackgroundColorOpened: redColor,
              header: const Text(
                'Can I return a product after purchasing?',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              content: const Text(
                "Yes you may have a refund and return the product withing 30 days "
                "after buying it, you may not return the product after 30 days have passed.",
              ),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,
              contentBorderColor: redColor,
            ),
            AccordionSection(
              isOpen: true,
              leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
              headerBackgroundColor: Colors.grey,
              headerBackgroundColorOpened: redColor,
              header: const Text(
                'How much are the delivery fees?',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              content: const Text(
                "Yes you may have a refund and return the product withing 30 days "
                "after buying it, you may not return the product after 30 days have passed.",
              ),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,
              contentBorderColor: redColor,
            ),
            AccordionSection(
              isOpen: true,
              leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
              headerBackgroundColor: Colors.grey,
              headerBackgroundColorOpened: redColor,
              header: const Text(
                'What information are you collecting about devices in the program, and how do you use it?',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              content: const Text(
                "We collect information about your use of your device, including your device’s system and stability, applications and services on the device, and your device’s interaction with software, applications, and services on the device. We may be provided this information directly from the device or its manufacturer. We use this information in order to provide, improve, and maintain the operability of our products and services, including the Amazon Widget app.",
              ),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,
              contentBorderColor: redColor,
            ),
          ],
        ),
      ],
    )
        .animate(
          controller: animationController,
          delay: const Duration(
            milliseconds: 300,
          ),
        )
        .slideX(
          begin: isInitialized
              ? showFaq
                  ? 1
                  : 0
              : -1,
          end: isInitialized
              ? showFaq
                  ? 0
                  : 1
              : -1,
        );
  }
}
