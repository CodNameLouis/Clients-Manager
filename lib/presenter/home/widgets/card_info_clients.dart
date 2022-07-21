import 'package:clients_manager/presenter/clients_details/clients_details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infra/models/responses/user_response_model.dart';

class CardInfoClients extends StatelessWidget {
  const CardInfoClients({
    Key? key,
    required this.height,
    required this.width,
    required this.user,
  }) : super(key: key);

  final double height;
  final double width;
  final UserResponseModel user;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(ClientsDetailsPage.route);
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        height: height * 0.12,
        width: width * 1,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.black.withOpacity(0.05),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.purple,
                backgroundImage: NetworkImage("http://loremflickr.com/640/480"),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text(
                  user.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  user.email,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
