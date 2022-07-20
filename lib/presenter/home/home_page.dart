import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './home_controller.dart';
import 'widgets/body_home.dart';
import 'widgets/custom_bottom_navigation_bar.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
<<<<<<< HEAD
        backgroundColor: const Color.fromARGB(255, 188, 157, 201),
=======
        backgroundColor: const Color(0xfff5ebe9),
>>>>>>> 4851ec9bcc53d8513f0f84307d76126f87297205
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Clientes',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: const SingleChildScrollView(
          child: BodyHome(),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}
