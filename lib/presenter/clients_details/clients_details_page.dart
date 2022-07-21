import 'package:clients_manager/presenter/clients_details/widgets/body_clients_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './clients_details_controller.dart';

class ClientsDetailsPage extends GetView<ClientsDetailsController> {
  const ClientsDetailsPage({Key? key}) : super(key: key);

  static const route = '/clients_details_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5ebe9),
      appBar: AppBar(
        title: const Text(
          'Detalhes do cliente',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: const BodyClientsDetails(),
    );
  }
}
