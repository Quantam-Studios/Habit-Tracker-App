import 'package:flutter/material.dart';
import 'package:habbit_tracker/components/add_habbit_button.dart';
import 'package:habbit_tracker/components/habit_tile.dart';
import 'package:habbit_tracker/components/new_habbit_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List todaysHabitList = [
    ["Morning Run", false],
    ["Reading", false],
  ];

  void checkBoxTapped(bool? value, int index) {
    setState(() {
      todaysHabitList[index][1] = value;
    });
  }

  void createNewHabit() {
    showDialog(
      context: context,
      builder: (context) {
        return EnterNewHabitBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AddHabitButton(
        onPressed: createNewHabit,
      ),
      backgroundColor: const Color(0xFF1a1a1a),
      body: ListView.builder(
        itemCount: todaysHabitList.length,
        itemBuilder: (context, index) {
          return HabitTile(
            habitName: todaysHabitList[index][0],
            habitCompleted: todaysHabitList[index][1],
            onChanged: (value) => checkBoxTapped(value, index),
          );
        },
      ),
    );
  }
}
