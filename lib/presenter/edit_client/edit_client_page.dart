import 'package:clients_manager/presenter/edit_client/widgets/body_edit_client.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './edit_client_controller.dart';

class EditClientPage extends GetView<EditClientController> {
  const EditClientPage({Key? key}) : super(key: key);

  static const route = '/adit_client';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5ebe9),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Editar informações',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: const BodyEditClient(),
    );
  }
}
