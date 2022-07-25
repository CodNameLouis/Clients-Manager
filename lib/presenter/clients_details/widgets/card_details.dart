import 'package:flutter/material.dart';

import '../../../infra/models/responses/user_response_model.dart';
import 'custom_details.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
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
    return Container(
      margin: const EdgeInsets.all(10),
      height: height * 0.7,
      width: width * 1,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        color: Colors.black.withOpacity(0.05),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.purple,
                  backgroundImage: NetworkImage(user.photo),
                ),
                const SizedBox(
                  width: 20,
                ),
                CustomDetails(
                  title: "Nome:",
                  subtitle: user.name,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomDetails(
              title: "Nome de usuario:",
              subtitle: user.name,
            ),
            CustomDetails(
              title: "Email:",
              subtitle: user.email,
            ),
            CustomDetails(
              title: "Criado em:",
              subtitle: user.createAt,
            ),
            CustomDetails(
              title: "Atualizado em:",
              subtitle: user.updateAt,
            ),
          ],
        ),
      ),
    );
  }
}
