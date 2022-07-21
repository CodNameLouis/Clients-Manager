import 'package:clients_manager/presenter/edit_client/edit_client_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/widgets/default_text_button.dart';
import 'card_details.dart';

class BodyClientsDetails extends StatelessWidget {
  const BodyClientsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CardDetails(
          height: height,
          width: width,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DefaultTextButton(
              title: 'Editar',
              taped: () {
                Get.toNamed(EditClientPage.route);
              },
            ),
            DefaultTextButton(
              title: 'Excluir',
              taped: () {},
            ),
          ],
        ),
      ],
    );
  }
}
