import 'package:clients_manager/shared/widgets/defaultTextFormField.dart';
import 'package:clients_manager/shared/widgets/default_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_controller.dart';
import 'card_info_clients.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        DefaultTextFormWidget(height: height, width: width),
        DefaultTextButton(title: "Pesquisar", taped: () {}),
        const SizedBox(
          height: 10,
        ),
        GetBuilder<HomeController>(
          builder: (_control) {
            return ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return CardInfoClients(
                  height: height,
                  width: width,
                  user: _control.user[index],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
