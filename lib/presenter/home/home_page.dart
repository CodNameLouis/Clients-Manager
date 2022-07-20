// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './home_controller.dart';
import 'widgets/body_home.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffce87e9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Gerenciamento De Clientes',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: const BodyHome(),
    );
  }
}
