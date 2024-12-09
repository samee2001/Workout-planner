import 'package:flutter/material.dart';
import 'package:workout_planner/consts/colors.dart';

class AddExerciseCard extends StatefulWidget {
  final String exerciseName;
  final String exerciseImageUrl;
  final int noOfMinutes;
  final void Function() toggleAddExercise;
  final void Function() toggleAddFavourites;

  final bool isAdded;
  final bool isFavourite;

  const AddExerciseCard({
    super.key,
    required this.exerciseName,
    required this.exerciseImageUrl,
    required this.noOfMinutes,
    required this.toggleAddExercise,
    required this.isAdded,
    required this.toggleAddFavourites,
    required this.isFavourite,
  });

  @override
  State<AddExerciseCard> createState() => _AddExerciseCardState();
}

class _AddExerciseCardState extends State<AddExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: kSubtitleColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 0.5,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            widget.exerciseName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Image.asset(
            widget.exerciseImageUrl,
            width: 90,
          ),
          Text("${widget.noOfMinutes} Minutes"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    widget.toggleAddExercise();
                  },
                  icon: Icon(
                    widget.isAdded ? Icons.remove : Icons.add,
                    color: kMainColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    widget.toggleAddFavourites();
                  },
                  icon: Icon(
                    widget.isFavourite ? Icons.favorite : Icons.favorite_outline,
                    color: kMainPinkColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
