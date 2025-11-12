import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/exam_model.dart';

class ExamDetails extends StatelessWidget {
  final Exam exam;

  const ExamDetails({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    final textColor = exam.isPast ? Colors.black : Colors.lightGreen.shade800;
    final iconColor = exam.isPast ? Colors.black : Colors.lightGreen.shade900;
    final timeText = exam.isPast ? exam.timeLeft : "${exam.timeLeft} до испитот";

    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Center(
            child: Icon(
              Icons.book,
              size: 80,
              color: exam.isPast
                  ? Colors.grey
                  : Theme.of(context).colorScheme.primary,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              exam.name,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.calendar_today, size: 30, color: Colors.grey.shade800),
              SizedBox(width: 15),
              Text(
                'Датум: ${DateFormat('dd.MM.yyyy').format(exam.dateTime)}',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Icon(Icons.access_time, size: 30, color: Colors.grey.shade800),
              SizedBox(width: 15),
              Text(
                'Време: ${DateFormat('HH:mm').format(exam.dateTime)}',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.meeting_room, size: 30, color: Colors.grey.shade800),
              SizedBox(width: 15),
              Expanded(
                child: Text(
                  "Простории: ${exam.rooms.join(', ')}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Icon(Icons.timer, size: 30, color: iconColor),
              SizedBox(width: 15),
              Expanded(
                child: Text(
                  timeText,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
