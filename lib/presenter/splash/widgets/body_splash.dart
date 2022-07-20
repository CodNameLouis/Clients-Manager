import 'package:flutter/material.dart';

class BodySplash extends StatelessWidget {
  const BodySplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              stops: [
                0.3,
                0.8,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff6e3668),
                Color(0xffc23f81),
              ],
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Clients Manager",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Text(
                "Gerencie seus clientes",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
