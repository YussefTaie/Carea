import 'package:carsapp/SharedTheams/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

fild(
    {
    required TextEditingController controller,
    required String label,
    required IconData icon,
    Widget suffixIcon = const SizedBox(),
    bool issecure = false,
    required TextInputType textInputType,
    required TextInputAction textInputAction,
    List<TextInputFormatter> formaters = const [],
    bool isEnabled = true}) {
  return Padding(
    padding: const EdgeInsets.only(right: 25.0, left: 25.0),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        border: _inputBorder(AppColors.Grey),
        focusedBorder: _inputBorder(AppColors.Grey),
        errorBorder: _inputBorder(Colors.red),
        labelText: label,
        labelStyle: GoogleFonts.poppins(color: AppColors.Grey, fontSize: 16),
        prefixIcon: Icon(
          icon,
          color: AppColors.Grey,
          size: 20,
        ),
        suffixIcon: suffixIcon,
      ),
      obscureText: issecure,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      inputFormatters: formaters,
      enabled: isEnabled,
    ),
  );
}

OutlineInputBorder _inputBorder(Color color) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: color, width: 0.5));
}
