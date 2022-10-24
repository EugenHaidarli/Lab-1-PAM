import 'package:age_calculator/age_calculator.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextScreen(),
    );
  }
}

class TextScreen extends StatefulWidget {
  const TextScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime dateTime = DateTime.now();
  DateDuration dur = DateDuration(days: 0, months: 0, years: 0);
  bool showDate = true;
  bool showTime = true;

  // Select for Date
  Future<DateTime> _selectDate(BuildContext context) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
      });
    }
    return selectedDate;
  }

  String _ageCalculator() {
     dur = AgeCalculator.age(selectedDate);
     return dur.toString();
  }

  String getDate() {
    // ignore: unnecessary_null_comparison
    if (selectedDate == null) {
      return 'select date';
    } else {
      return DateFormat('dd.MM.yyyy').format(selectedDate);
    }
  }

  String getAge(){
    return dur.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Age Calculator'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _selectDate(context);
                  showDate = true;
                },
                child: const Text('Date Picker'),
              ),
            ),
            showDate ? Center(child: Text(getDate())) : const SizedBox(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              // child: ElevatedButton(
              //   onPressed: () {
              //     _ageCalculator();
              //     showTime = true;
              //   },
              //   child: const Text('Calculated time'),
              ),
            // ),
            showTime ? Center(child: Text(_ageCalculator())) : const SizedBox()
          ],
        ),
      ),
    );
  }
}