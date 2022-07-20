import 'package:flutter/material.dart';

class CardInfoClients extends StatelessWidget {
  const CardInfoClients({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 80,
      width: 380,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.05),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        children: const [
          Padding(
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
                "Jaque Vieira",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                "Jaquelinevieira1010@outlook.com",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
