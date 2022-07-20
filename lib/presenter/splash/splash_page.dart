import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './splash_controller.dart';
import 'widgets/body_splash.dart';

class SplashPage extends GetView<SplashController> {
    
    const SplashPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return const Scaffold(
            body: BodySplash(),
        );
    }
}