import 'package:flutter/material.dart';
import 'package:palugada/pages/widgets/rating.dart';

class sedangRamaiWidget extends StatelessWidget {
  const sedangRamaiWidget({
    super.key,
    required this.sampul,
    required this.judul,
    required this.penulis,
  });
  final String sampul;
  final String judul;
  final String penulis;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 120,
            width: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                sampul,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            padding: EdgeInsets.all(5),
            width: 140,
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  judul,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  penulis,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                RatingWidget(rating: 4.8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
