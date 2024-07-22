import 'package:flutter/material.dart';
import 'package:palugada/widgets/button/button_icon.dart';

class menuKategori extends StatelessWidget {
  const menuKategori({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
  });
  final Color color;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ButtonIcon(
              icon: icon,
              onTap: () {
                print("aktif");
              },
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
