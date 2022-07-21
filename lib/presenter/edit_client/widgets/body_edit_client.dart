import 'package:clients_manager/shared/widgets/defaultTextFormField.dart';
import 'package:flutter/material.dart';

class BodyEditClient extends StatelessWidget {
  const BodyEditClient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const DefaultTextFormWidget(
          labelText: "Nome",
          prefixIcon: Icons.person_add_alt_rounded,
        ),
        const DefaultTextFormWidget(
          labelText: "Nome de Usuário",
          prefixIcon: Icons.people_alt,
        ),
        const DefaultTextFormWidget(
          labelText: "Email",
          prefixIcon: Icons.email,
        ),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black.withOpacity(.05),
          ),
          child: const Text(
            'Alterar foto',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
