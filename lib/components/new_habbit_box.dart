import 'package:flutter/material.dart';

class EnterNewHabitBox extends StatelessWidget {
  const EnterNewHabitBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: TextField(),
    );
  }
}
