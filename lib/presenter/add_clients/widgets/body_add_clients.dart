import 'package:clients_manager/shared/widgets/defaultTextFormField.dart';
import 'package:flutter/material.dart';

import '../../../shared/widgets/default_text_button.dart';

class BodyAddClients extends StatelessWidget {
  const BodyAddClients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        DefaultTextFormWidget(
          labelText: "Nome",
          prefixIcon: Icons.person_add_alt_rounded,
        ),
        DefaultTextFormWidget(
          labelText: "Nome de Usuário",
          prefixIcon: Icons.people_alt,
        ),
        DefaultTextFormWidget(
          labelText: "Email",
          prefixIcon: Icons.email,
        ),
        DefaultTextButton(title: 'Adicionar foto'),
      ],
    );
  }
}
