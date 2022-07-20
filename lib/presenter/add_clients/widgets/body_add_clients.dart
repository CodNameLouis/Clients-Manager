import 'package:clients_manager/shared/widgets/defaultTextFormField.dart';
import 'package:flutter/material.dart';

class BodyAddClients extends StatelessWidget {
  const BodyAddClients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        DefaultTextFormWidget(
          labelText: "Nome",
          prefixIcon: Icons.abc_outlined,
        ),
        DefaultTextFormWidget(
          labelText: "Nome de Usuário",
          prefixIcon: Icons.abc_outlined,
        ),
        DefaultTextFormWidget(
          labelText: "Email",
          prefixIcon: Icons.abc_outlined,
        ),
      ],
    );
  }
}
