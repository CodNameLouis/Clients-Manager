import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_controller.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_control) {
        return BottomNavigationBar(
          backgroundColor: Colors.grey.shade200.withOpacity(0.5),
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          selectedFontSize: 15,
          unselectedFontSize: 15,
          iconSize: 30,
          onTap: (int index) {
            _control.selectItem(index);
          },
          items: const [
            BottomNavigationBarItem(
              label: "Adicionar",
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.purple,
              ),
            ),
            BottomNavigationBarItem(
              label: "Pesquisar",
              icon: Icon(
                Icons.search,
                color: Colors.purple,
              ),
            ),
          ],
        );
      },
    );
  }
}
