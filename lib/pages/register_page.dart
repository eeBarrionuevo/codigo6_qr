import 'package:codigo6_qr/ui/widgets/common_button_widget.dart';
import 'package:codigo6_qr/ui/widgets/common_texfield_widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
              const SizedBox(
                height: 12.0,
              ),
              Text(
                "Por favor ingresa los campos requeridos.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              CommonTextFieldWidget(
                hintText: "Ingresa un título...",
              ),
              SizedBox(
                height: 16.0,
              ),
              CommonTextFieldWidget(
                hintText: "Ingresa una observación...",
              ),
              SizedBox(
                height: 20.0,
              ),
              CommonButtonWidget(
                onPressed: () {},
                text: "Guardar",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
