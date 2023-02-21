import 'package:codigo6_qr/pages/scanner_page.dart';
import 'package:codigo6_qr/ui/general/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              const Text(
                "SaveQR",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text(
                "Gestiona los códigos QR de tu preferencia y accede cuando quieras.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Image.asset(
                "assets/images/qr.png",
                width: width * 0.80,
              ),
              SizedBox(
                width: double.infinity,
                height: 48.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ScannerPage()));
                  },
                  child: Text(
                    "Escanear QR",
                    style: TextStyle(
                      color: kBrandSecondaryColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBrandPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Ver historial",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
