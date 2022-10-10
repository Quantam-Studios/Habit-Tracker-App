import 'package:flutter/material.dart';

class AddHabitButton extends StatelessWidget {
  final Function()? onPressed;

  const AddHabitButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(Icons.add),
    );
  }
}
