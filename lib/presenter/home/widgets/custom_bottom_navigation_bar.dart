import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey.shade200.withOpacity(0.5),
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      selectedFontSize: 15,
      unselectedFontSize: 15,
      iconSize: 30,
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
  }
}
