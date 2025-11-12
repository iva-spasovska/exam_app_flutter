import 'package:flutter/material.dart';
import '../models/exam_model.dart';
import 'package:intl/intl.dart';

class ExamCard extends StatelessWidget {
  final Exam exam;

  const ExamCard({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/details", arguments: exam);
      },
      child: Card(
        color: exam.isPast ? Colors.grey.shade300 : Colors.lightGreen.shade200,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: Icon(
                      Icons.book,
                      color:exam.isPast ? Colors.grey.shade300 : Colors.lightGreen.shade200,
                      size: 20,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      exam.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward, size: 22, color: Theme.of(context).colorScheme.primary),
                ],
              ),
              SizedBox(height: 5),
              Divider(height: 12, color: Theme.of(context).colorScheme.primary),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.calendar_today, size: 18, color: Colors.grey.shade700),
                  SizedBox(width: 8),
                  Text(
                    DateFormat('dd.MM.yyyy').format(exam.dateTime),
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.access_time, size: 18, color: Colors.grey.shade800),
                  SizedBox(width: 8),
                  Text(
                    DateFormat('HH:mm').format(exam.dateTime),
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.room, size: 18, color: Colors.grey.shade900),
                  SizedBox(width: 8),
                  Text(exam.rooms.join(', '), style: TextStyle(fontSize: 14)),
                ],
              ),
              SizedBox(height: 5),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: exam.isPast
                        ? Colors.grey.shade600
                        : Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade700,
                        blurRadius: 3,
                        offset: Offset(1, 2),
                      ),
                    ],
                  ),
                  child: Text(
                    exam.isPast ? 'Завршен' : 'Преостанато: ${exam.timeLeft}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
