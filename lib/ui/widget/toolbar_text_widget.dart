import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ToolbarTextWidget extends StatelessWidget {
  final String text;
  final GestureTapCallback? onTap;

  const ToolbarTextWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).colorScheme.scrim,
        ),
      ),
    ).animate().slideY().scale();
  }
}
