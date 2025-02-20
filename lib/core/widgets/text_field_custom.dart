import 'package:flutter/material.dart';

import '../styles/app_colors.dart';

class TextFieldCustom extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final IconData? icon;

  const TextFieldCustom({
    super.key,
    required this.title,
    required this.controller,
    this.icon,
  });

  @override
  _TextFieldCustomState createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      // autovalidateMode: AutovalidateMode.onUserInteraction, // متابعة الإدخال أولًا بأول
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          setState(() => hasError = true); // في حالة الخطأ
          return 'Please enter your ${widget.title}';
        }
        setState(() => hasError = false); // لو البيانات صحيحة
        return null;


      },
      decoration: InputDecoration(
        labelText: widget.title,
        hintText: "Enter your ${widget.title}",
        filled: true,
        fillColor: AppColors.colorTextForm,
        prefixIcon: widget.icon != null ? Icon(widget.icon, color: Colors.deepOrange) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: hasError ? Colors.red : Colors.blueAccent, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.blueAccent, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
    );
  }
}
