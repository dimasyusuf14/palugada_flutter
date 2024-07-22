import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final String icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(
              icon,
              // color: Colors.red,
              width: 24,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
