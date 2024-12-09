import 'package:flutter/material.dart';
import 'package:workout_planner/consts/colors.dart';

class AddEquipmentCard extends StatefulWidget {
  final String equipmentName;
  final String equipmentImageUrl;
  final int noOfMinuites;
  final double noOfCalories;
  final void Function() toggleAddEquipment;
  final void Function() toggleAddFavourite;
  final bool isAddEquipment;
  final bool isAddFav;

  const AddEquipmentCard({
    super.key,
    required this.equipmentName,
    required this.equipmentImageUrl,
    required this.noOfMinuites,
    required this.noOfCalories,
    required this.toggleAddEquipment,
    required this.isAddEquipment,
    required this.toggleAddFavourite,
    required this.isAddFav,
  });

  @override
  State<AddEquipmentCard> createState() => _AddEquipmentCardState();
}

class _AddEquipmentCardState extends State<AddEquipmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: kSubtitleColor.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 0.5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              // ignore: unnecessary_string_interpolations
              "${widget.equipmentName}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  widget.equipmentImageUrl,
                  width: 70,
                  fit: BoxFit.cover,
                ),
                Column(
                  children: [
                    Text("${widget.noOfMinuites} mins of Workout"),
                    Text("${widget.noOfCalories} Calories will burn "),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              widget.toggleAddEquipment();
                            },
                            icon: Icon(
                              widget.isAddEquipment ? Icons.remove : Icons.add,
                              color: kMainColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              widget.toggleAddFavourite();
                            },
                            icon: Icon(
                              widget.isAddFav
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: kMainPinkColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
