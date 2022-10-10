import 'package:flutter/material.dart';

class HabitTile extends StatelessWidget {
  final String habitName;
  final bool habitCompleted;
  final Function(bool?)? onChanged;

  const HabitTile(
      {Key? key,
      required this.habitName,
      required this.habitCompleted,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF595959),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              habitName,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            Checkbox(value: habitCompleted, onChanged: onChanged),
          ],
        ),
      ),
    );
  }
}
