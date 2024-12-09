import 'package:flutter/material.dart';
import 'package:workout_planner/consts/colors.dart';

class MarkEquipemtCard extends StatefulWidget {
  final String equipmentName;
  final String equipmentImageUrl;

  const MarkEquipemtCard({
    super.key,
    required this.equipmentName,
    required this.equipmentImageUrl,
  });

  @override
  State<MarkEquipemtCard> createState() => _MarkEquipemtCardState();
}

class _MarkEquipemtCardState extends State<MarkEquipemtCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kSubtitleColor.withOpacity(0.3),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            left: kDefaultPadding, right: kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.equipmentName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: kMainColor,
              ),
            ),
            Image.asset(
              widget.equipmentImageUrl,
              width: 80,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mark_as_unread,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
