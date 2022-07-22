import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_controller.dart';
import 'card_info_clients.dart';

class BodyHome extends GetView<HomeController> {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<HomeController>(
      builder: (_control) {
        return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: controller.user.length >= 50 ? 50 : controller.user.length,
          itemBuilder: (BuildContext context, index) {
            final users = controller.user[index];
            return CardInfoClients(
              height: height,
              width: width,
              user: users!,
            );
          },
        );
      },
    );
  }
}
