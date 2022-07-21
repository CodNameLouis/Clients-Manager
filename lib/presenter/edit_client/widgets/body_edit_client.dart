import 'package:clients_manager/shared/widgets/defaultTextFormField.dart';
import 'package:clients_manager/shared/widgets/default_text_button.dart';
import 'package:flutter/material.dart';

class BodyEditClient extends StatelessWidget {
  const BodyEditClient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DefaultTextFormWidget(
          height: height,
          width: width,
          labelText: "Nome",
          prefixIcon: Icons.person_add_alt_rounded,
        ),
        DefaultTextFormWidget(
          height: height,
          width: width,
          labelText: "Nome de Usuário",
          prefixIcon: Icons.people_alt,
        ),
        DefaultTextFormWidget(
          height: height,
          width: width,
          labelText: "Email",
          prefixIcon: Icons.email,
        ),
        DefaultTextButton(
          title: 'Alterar foto',
          taped: () {},
        )
      ],
    );
  }
}
