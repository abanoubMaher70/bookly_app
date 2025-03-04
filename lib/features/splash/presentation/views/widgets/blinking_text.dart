import 'package:flutter/material.dart';

class BlinkingText extends StatefulWidget {
  final String text;
  const BlinkingText({super.key, required this.text});

  @override
  State<BlinkingText> createState() => _BlinkingTextState();
}

class _BlinkingTextState extends State<BlinkingText>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 750),
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(opacity: _controller, child: Text(widget.text));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
