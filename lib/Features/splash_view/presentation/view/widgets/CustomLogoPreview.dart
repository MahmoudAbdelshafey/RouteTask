import 'dart:async';
import 'package:flutter/material.dart';
import 'package:route_task/Features/ecommerce_home/presentation/view/ecommerce_home.dart';
import 'package:route_task/Features/splash_view/presentation/view/widgets/fade_animtion.dart';

import '../../../../../core/constants.dart';

class CustomLogoPreview extends StatefulWidget {
  const CustomLogoPreview({super.key});

  @override
  State<CustomLogoPreview> createState() => _CustomLogoPreviewState();
}

class _CustomLogoPreviewState extends State<CustomLogoPreview>
    with TickerProviderStateMixin {
  AnimationController? scaleController;
  Animation<double>? scaleAnimation;

  double _opacity = 0;
  bool _value = true;
  var _timer;
  var _timer2;
  var _timer3;
  @override
  void initState() {
    super.initState();

    setupScaleController();

    setupScallAnimation();
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
    _timer2?.cancel();
    _timer3?.cancel();
    scaleController!.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: AnimatedOpacity(
        curve: Curves.fastLinearToSlowEaseIn,
        duration: const Duration(seconds: 6),
        opacity: _opacity,
        child: AnimatedContainer(
          curve: Curves.fastLinearToSlowEaseIn,
          duration: const Duration(seconds: 2),
          height: _value ? 50 : 200,
          width: _value ? 50 : 200,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppConstants.kPrimaryColor.withOpacity(0.2),
                blurRadius: 100,
                spreadRadius: 10,
              ),
            ],
            color: Color(0xff287acd),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                  // color: Color,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/logo.png',
                      ),
                      fit: BoxFit.fitWidth)),
              child: AnimatedBuilder(
                animation: scaleAnimation!,
                builder: (c, child) => Transform.scale(
                  scale: scaleAnimation!.value,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppConstants.kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void setupScallAnimation() {
    scaleAnimation =
        Tween<double>(begin: 0.0, end: 12).animate(scaleController!);

     _timer = Timer(const Duration(milliseconds: 600), () {
      setState(() {
        _opacity = 1.0;
        _value = false;
      });
    });

     _timer2 = Timer(const Duration(milliseconds: 2000), () {
      setState(() {
        scaleController!.forward();
      });
    });
  }

  void setupScaleController() {
    scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    )..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            Navigator.of(context).pushReplacement(
              ThisIsFadeRoute(
                route: EcommerceHome(),
              ),
            );
             _timer3 = Timer(
              const Duration(milliseconds: 300),
              () {
                scaleController!.reset();
              },
            );
          }
        },
      );
  }
}
