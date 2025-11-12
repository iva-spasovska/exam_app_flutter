import 'package:flutter/material.dart';
import '../models/exam_model.dart';
import '../widgets/exam_grid.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final exams = [
      Exam(
        name: 'Веб програмирање',
        dateTime: DateTime(2025, 11, 17, 9, 0),
        rooms: ['АМФ МФ', 'АМФ ФИНКИ Г'],
      ),
      Exam(
        name: 'Бази на податоци',
        dateTime: DateTime(2025, 11, 19, 8, 0),
        rooms: ['лаб. 2', 'лаб. 3', 'лаб. 200а', 'лаб. 200ц'],
      ),
      Exam(
        name: 'Мобилни информациски системи',
        dateTime: DateTime(2025, 12, 15, 8, 0),
        rooms: ['АМФ МФ'],
      ),
      Exam(
        name: 'Програмирање на видео игри',
        dateTime: DateTime(2025, 11, 18, 13, 0),
        rooms: ['лаб. 2', 'лаб. 3', 'лаб. 12', 'лаб. 13'],
      ),
      Exam(
        name: 'Веб дизајн',
        dateTime: DateTime(2025, 12, 19, 16, 0),
        rooms: ['лаб. 117', 'лаб. 138', 'лаб. 215'],
      ),
      Exam(
        name: 'Калкулус',
        dateTime: DateTime(2025, 11, 9, 11, 0),
        rooms: ['Б1', 'Б2.2', 'Б3.2', 'АМФ ФИНКИ Г'],
      ),
      Exam(
        name: 'Основи на роботика',
        dateTime: DateTime(2025, 11, 10, 10, 0),
        rooms: ['АМФ ФИНКИ Г'],
      ),
      Exam(
        name: 'Вовед во наука за податоци',
        dateTime: DateTime(2025, 11, 29, 13, 30),
        rooms: ['лаб. 2', 'лаб. 3', 'лаб. 12', 'лаб. 13', 'лаб. 138'],
      ),
      Exam(
        name: 'Напредно програмирање',
        dateTime: DateTime(2025, 10, 31, 8, 30),
        rooms: ['лаб. 215', 'лаб. 200а', 'лаб. 200ц', 'лаб. 117'],
      ),
      Exam(
        name: 'Дигитизација',
        dateTime: DateTime(2025, 11, 17, 14, 0),
        rooms: ['лаб. 2', 'лаб. 3', 'лаб. 138'],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ExamGrid(exams: exams),
      ),
      bottomNavigationBar: Container(
        height: 85,
        color: Colors.transparent,
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Вкупно испити:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            Chip(
              label: Text(
                '${exams.length}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              backgroundColor: Colors.lightGreen.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
