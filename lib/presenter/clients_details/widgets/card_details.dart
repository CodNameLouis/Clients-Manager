import 'package:flutter/material.dart';

import 'custom_details.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

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
              children: const [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.purple,
                  backgroundImage:
                      NetworkImage("http://loremflickr.com/640/480"),
                ),
                SizedBox(
                  width: 20,
                ),
                CustomDetails(
                  title: "Nome:",
                  subtitle: "Jaque",
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomDetails(
              title: "Nome de usuario:",
              subtitle: "JaqueViieira",
            ),
            const CustomDetails(
              title: "Email:",
              subtitle: "Jaquelinevieira1010@outlook.com",
            ),
            const CustomDetails(
              title: "Atualizado em:",
              subtitle: "20/07/2022",
            ),
            const CustomDetails(
              title: "Criado em:",
              subtitle: "18/07/2022",
            ),
          ],
        ),
      ),
    );
  }
}
