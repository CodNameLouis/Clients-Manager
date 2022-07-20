import 'package:clients_manager/presenter/add_clients/widgets/body_add_clients.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './add_clients_controller.dart';

class AddClientsPage extends GetView<AddClientsController> {
  const AddClientsPage({Key? key}) : super(key: key);

  static const route = '/add_clients';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5ebe9),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Adicionar cliente',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: const BodyAddClients(),
    );
  }
}
