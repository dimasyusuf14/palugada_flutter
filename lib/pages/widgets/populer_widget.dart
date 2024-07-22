import 'package:flutter/material.dart';
import 'package:palugada/pages/widgets/rating.dart';

class populerWidget extends StatelessWidget {
  const populerWidget({
    super.key,
    required this.cover,
    required this.judul,
    required this.penulis, required this.onTap,
  });
  final String cover;
  final String judul;
  final String penulis;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 150,
                height: 230,
                // height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    cover,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                left: 8,
                child: RatingWidget(rating: 4.8),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 150,
            child: Text(
              judul,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          // SizedBox(height: 3),
          Text(
            penulis,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}
