import 'package:flutter/material.dart';
import '../models/exam_model.dart';
import '../widgets/exam_details.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final exam = ModalRoute.of(context)!.settings.arguments as Exam;
    return Scaffold(
      appBar: AppBar(
        title: Text('Детали за испитот',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: exam.isPast
            ? Colors.grey.shade600
            : Theme.of(context).colorScheme.primary,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ExamDetails(exam: exam),
    );
  }
}
