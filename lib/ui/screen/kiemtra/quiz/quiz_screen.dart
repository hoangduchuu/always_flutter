import 'package:developerfect_app/generated/assets.dart';
import 'package:developerfect_app/ui/screen/kiemtra/components/body.dart';
import 'package:developerfect_app/ui/screen/kiemtra/quiz/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'quiz_controller.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          child: Row(
            children: [
              Image.asset(Assets.iconsHeydevIcon,height: 50.h,),
              Text('Quiz',style: TextStyle(fontSize: 20.sp),),
            ],
          ),
        ),
        actions: [
          ElevatedButton(onPressed: _controller.nextQuestion, child: Text("Skip")),
        ],

      ),
      body: Body(),
    );
  }
}
