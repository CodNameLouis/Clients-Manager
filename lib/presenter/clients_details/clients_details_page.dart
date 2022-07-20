import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './clients_details_controller.dart';

class ClientsDetailsPage extends GetView<ClientsDetailsController> {
    
    const ClientsDetailsPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('ClientsDetailsPage'),),
            body: Container(),
        );
    }
}