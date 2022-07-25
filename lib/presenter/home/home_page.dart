import 'package:clients_manager/shared/widgets/default_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './home_controller.dart';
import '../../routes/routes_imports.dart';
import 'widgets/body_home.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff5ebe9),
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
        body: const BodyHome(),
        bottomNavigationBar: DefaultTextButton(
          title: 'Adicionar',
          taped: () {
            Get.toNamed(AddClientsPage.route);
          },
        ),
      ),
    );
  }
}
