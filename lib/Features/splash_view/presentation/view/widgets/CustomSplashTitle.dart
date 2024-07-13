import 'package:flutter/material.dart';

class CustomSplashTitle extends StatefulWidget {
  const CustomSplashTitle({super.key});

  @override
  State<CustomSplashTitle> createState() => _CustomSplashTitleState();
}

class _CustomSplashTitleState extends State<CustomSplashTitle> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  bool isVisible = false;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSlidingAnimation();
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, _) => SlideTransition(
            position: slidingAnimation,
            child:  Visibility(
              visible:isVisible ,
              child: Text(
                'Route Academy',
                style: TextStyle(
                  fontSize: 24,

                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ],
    );
  }
  void initSlidingAnimation() async {
    animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 18) , end:  const Offset(0, 16))
            .animate(animationController);

    await Future.delayed(const Duration(milliseconds: 1000));
    isVisible = true;
    await Future.delayed(const Duration(milliseconds: 1000));

    animationController.forward();

  }

}
