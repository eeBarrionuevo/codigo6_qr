import 'package:codigo6_qr/db/db_admin.dart';
import 'package:codigo6_qr/models/qr_model.dart';
import 'package:codigo6_qr/ui/general/colors.dart';
import 'package:codigo6_qr/ui/widgets/common_button_widget.dart';
import 'package:codigo6_qr/ui/widgets/common_texfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _observationController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const Text(
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
                      const Text(
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
                        controller: _titleController,
                        isRequired: true,
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      CommonTextFieldWidget(
                        hintText: "Ingresa una observación...",
                        controller: _observationController,
                        isRequired: false,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: QrImage(
                          data: "https://www.youtube.com/watch?v=ki_OcikiVRY",
                          version: QrVersions.auto,
                          size: 200.0,
                        ),
                      ),
                      // Expanded(
                      //   child: SizedBox(),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: CommonButtonWidget(
                onPressed: () {
                  DateFormat myFormat = DateFormat("dd/MM/yyyy hh:mm");
                  String myDate = myFormat.format(DateTime.now());

                  QRModel mantequilla = QRModel(
                    title: _titleController.text,
                    observation: _observationController.text,
                    url: "http://",
                    datetime: myDate,
                  );
                  // DBAdmin().insertQR(mantequilla);

                  if (_formKey.currentState!.validate()) {}
                },
                text: "Guardar",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
