import 'package:betheme/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/image_strings.dart';
import 'fade_in_animation_controller.dart';


class MAnimationWidget extends StatelessWidget {
   MAnimationWidget({
    super.key,
    required this.durationInMs,
    required this.animatePosition,
  });


final controller = Get.put(FadeInAnimationController());
final int durationInMs;
final MAnimatePosition? animatePosition;


  @override
  Widget build(BuildContext context) {
    return Obx(()=> AnimatedPositioned(
        duration: const Duration(milliseconds: 1600),
           top: controller.animate.value ? 0: -30, 
          left: controller.animate.value ? 0: -30 ,
          child: AnimatedOpacity(
            opacity: controller.animate.value? 1 : 0 , 
            duration: const Duration(microseconds: 1600),
            child: Image.asset(tSplashTopIcon)
            ),
             ),);
  }
}