import 'package:flutter/material.dart';
import '../models/exam_model.dart';
import 'exam_card.dart';

class ExamGrid extends StatelessWidget {
  final List<Exam> exams;

  const ExamGrid({super.key, required this.exams});

  @override
  Widget build(BuildContext context) {
    final sortedExams = [...exams]..sort((a, b) => a.dateTime.compareTo(b.dateTime));

    return GridView.builder(
      padding: EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 200 / 130,
      ),
      itemCount: sortedExams.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return ExamCard(exam: sortedExams[index]);
      },
    );
  }
}

