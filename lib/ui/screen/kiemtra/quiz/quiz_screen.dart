// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:developerfect_app/generated/assets.dart';
import 'package:developerfect_app/ui/screen/kiemtra/components/body.dart';
import 'package:developerfect_app/ui/screen/kiemtra/quiz/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Image.asset(Assets.iconsHeydevIcon,height: 50.h,),
            Text('Quiz',style: TextStyle(fontSize: 20.sp),),
          ],
        ),
        actions: [
          ElevatedButton(onPressed: _controller.nextQuestion, child: const Text("Skip")),
        ],

      ),
      body: const Body(),
    );
  }
}
