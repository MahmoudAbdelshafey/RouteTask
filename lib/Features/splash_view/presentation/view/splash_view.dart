import 'package:flutter/material.dart';
import 'package:route_task/Features/splash_view/presentation/view/widgets/CustomLogoPreview.dart';
import 'package:route_task/Features/splash_view/presentation/view/widgets/CustomSplashTitle.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          CustomLogoPreview(),
          CustomSplashTitle(),

        ],
      ),
    );
  }

}

