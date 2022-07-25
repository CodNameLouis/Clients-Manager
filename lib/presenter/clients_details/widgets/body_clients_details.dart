import 'package:clients_manager/presenter/clients_details/clients_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'card_details.dart';

class BodyClientsDetails extends StatelessWidget {
  const BodyClientsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<ClientsDetailsController>(
      builder: (controller) {
        return ListView.builder(
          itemCount: controller.users.length,
          itemBuilder: (context, index) {
            final users = controller.users[index];
            return CardDetails(
              height: height,
              width: width,
              user: users,
            );
          },
        );
      },
    );
  }
}


        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     DefaultTextButton(
        //       title: 'Editar',
        //       taped: () {
        //         Get.toNamed(EditClientPage.route);
        //       },
        //     ),
        //     DefaultTextButton(
        //       title: 'Excluir',
        //       taped: () {},
        //     ),
        //   ],
        // ),