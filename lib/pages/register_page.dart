import 'package:codigo6_qr/ui/widgets/common_texfield_widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Registrar contenido",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "Por favor ingresa los campos requeridos.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            CommonTextFieldWidget(),
            CommonTextFieldWidget(),
          ],
        ),
      ),
    );
  }
}
