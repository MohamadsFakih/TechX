import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:techx/core/utils/mds.dart';

class SettingsFaqScreen extends StatelessWidget {
  const SettingsFaqScreen({
    super.key,
    required this.controller,
  });
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            controller.jumpToPage(
              0,
            );
          },
        ),
      ),
      body: ListView(
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
                leftIcon: const Icon(
                  Icons.monetization_on,
                  color: whiteColor,
                ),
                headerBackgroundColor: greyColor,
                headerBackgroundColorOpened: redColor,
                header: const Text(
                  'Can I pay in cash?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                  ),
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
                leftIcon: const Icon(
                  Icons.insights_rounded,
                  color: whiteColor,
                ),
                headerBackgroundColor: greyColor,
                headerBackgroundColorOpened: redColor,
                header: const Text(
                  'Can I return a product after purchasing?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                  ),
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
                leftIcon: const Icon(
                  Icons.insights_rounded,
                  color: whiteColor,
                ),
                headerBackgroundColor: greyColor,
                headerBackgroundColorOpened: redColor,
                header: const Text(
                  'Can I return a product after purchasing?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                  ),
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
                leftIcon: const Icon(
                  Icons.insights_rounded,
                  color: whiteColor,
                ),
                headerBackgroundColor: greyColor,
                headerBackgroundColorOpened: redColor,
                header: const Text(
                  'How much are the delivery fees?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                  ),
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
                leftIcon: const Icon(
                  Icons.insights_rounded,
                  color: whiteColor,
                ),
                headerBackgroundColor: greyColor,
                headerBackgroundColorOpened: redColor,
                header: const Text(
                  'What information are you collecting about devices in the program, and how do you use it?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                  ),
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
          const SizedBox(
            height: 16,
          ),
        ]
            .animate(
              interval: const Duration(
                milliseconds: 50,
              ),
            )
            .slideX(),
      ),
    );
  }
}
