import 'package:clients_manager/shared/widgets/defaultTextFormField.dart';
import 'package:flutter/material.dart';

import 'card_info_clients.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [DefaultTextFormWidget(height: height, width: width)],
        ),
        const SizedBox(
          height: 10,
        ),
        const CardInfoClients(),
        const CardInfoClients(),
        const CardInfoClients(),
      ],
    );
  }
}
