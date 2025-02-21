import 'package:flutter/material.dart';

import '../styles/app_colors.dart';

class TextFieldCustom extends StatefulWidget {
  final String? label; // عنوان الحقل
  final TextEditingController controller; // الكنترولر الخاص بالحقل
  final TextInputType keyboardType; // نوع الكيبورد (نصوص، أرقام...)
  final bool isPassword; // هل الحقل لكلمة المرور؟
  final IconData? prefixIcon; // أيقونة قبل النص
  final IconData? suffixIcon; // أيقونة بعد النص
  final String? Function(String?)? validator; // التحقق من صحة الإدخال
  final Function(String)? onChanged; // دالة تستدعي عند تغيير النص
  final bool autoFocus; // التركيز التلقائي
  final bool readOnly; // هل الحقل للعرض فقط؟

  const TextFieldCustom({
    Key? key,
    this.label,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    this.autoFocus = false,
    this.readOnly = false,
  });

  @override
  _TextFieldCustomState createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  bool hasError=true;
  bool _obscureText = true; // إخفاء أو إظهار كلمة المرور

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword ? _obscureText : false,
      validator: widget.validator,
      onChanged: widget.onChanged,
      autofocus: widget.autoFocus,
      readOnly: widget.readOnly,


      decoration: InputDecoration(
        // labelText: widget.title,
        // hintText: "Enter your ${widget.label}",
        // filled: true,
        // fillColor: AppColors.colorTextForm,
        labelText: widget.label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon, color: Colors.deepOrange) : null,

        suffixIcon: widget.isPassword
            ? IconButton(
          icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        )
            : (widget.suffixIcon != null ? Icon(widget.suffixIcon) : null),

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
