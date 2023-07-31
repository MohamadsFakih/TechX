import 'package:flutter/material.dart';
import 'dart:math' as math;

class CreditCardFlipper extends StatefulWidget {
  const CreditCardFlipper({
    super.key,
    required this.frontWidget,
    required this.backWidget,
  });

  final Widget frontWidget;
  final Widget backWidget;

  @override
  _CreditCardFlipperState createState() => _CreditCardFlipperState();
}

class _CreditCardFlipperState extends State<CreditCardFlipper>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  bool _isFrontVisible = true;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleCardSide() {
    if (_isFrontVisible) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    _isFrontVisible = !_isFrontVisible;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleCardSide,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.002)
          ..rotateY(_animation.value * math.pi),
        child: _isFrontVisible ? widget.frontWidget : widget.backWidget,
      ),
    );
  }
}
