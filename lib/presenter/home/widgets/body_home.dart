import 'package:flutter/material.dart';

import 'card_info_clients.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 10,
        ),
        CardInfoClients(),
        CardInfoClients(),
        CardInfoClients(),
      ],
    );
  }
}