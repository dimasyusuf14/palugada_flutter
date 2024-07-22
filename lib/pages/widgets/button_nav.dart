import 'package:flutter/material.dart';
import 'package:palugada/widgets/button/button_icon.dart';

class butttonNav extends StatelessWidget {
  const butttonNav({
    super.key,
    required this.icon, required this.title,
    
  });
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 63,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: ButtonIcon(
              icon: icon,
              onTap: () {},
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

