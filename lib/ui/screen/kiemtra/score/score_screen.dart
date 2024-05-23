// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:developerfect_app/route/navigators.dart';
import 'package:developerfect_app/ui/screen/kiemtra/quiz/controllers/question_controller.dart';
import 'package:developerfect_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF3383CD),
                  Color(0xFF11249F),
                ],
              ),
            ),
          ),
          Column(
            children: [
              const Spacer(flex: 3),
              Text("Score", style: TextStyle(color: kSecondaryColor, fontSize: 18.sp)),
              const Spacer(),
              Text("${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                  style: TextStyle(color: kSecondaryColor, fontSize: 18.sp)),
              const Spacer(flex: 3),
              ElevatedButton(
                  onPressed: () {
                    Get.close(2);
                    AppNavigators.gotoHome();
                  },
                  child: const Text('Restart Quiz')),
              SizedBox(height: 50.h),
            ],
          )
        ],
      ),
    );
  }
}
