import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:palugada/controllers/sign_in_controller.dart';

class PasswordField extends StatefulWidget {
  final SignInController controller;

  const PasswordField({super.key, required this.controller});

  @override
  // ignore: library_private_types_in_public_api
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  void _togglePasswordView() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      child: Padding(
        padding: const EdgeInsets.all(11),
        child: TextFormField(
          controller: widget.controller.ctrlPasswrod.value,
          keyboardType: TextInputType.phone,
          obscureText: _obscureText,
          onChanged: (value) {},
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter
                .digitsOnly, // Membatasi input hanya ke angka
            LengthLimitingTextInputFormatter(
                8), // Membatasi panjang input hingga 8 digit
          ],
          decoration: InputDecoration(
            hintText: "Password",
            border: InputBorder.none,
            suffixIcon: IconButton(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              icon: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: _togglePasswordView,
            ),
            // fillColor: Colors.grey[250],
          ),
        ),
      ),
    );
  }
}