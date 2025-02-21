import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldCustom extends StatefulWidget {
  final String? label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isPassword;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final bool autoFocus;
  final bool readOnly;

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

        labelText: widget.label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.r)),
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
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: hasError ? Colors.red : Colors.blueAccent, width: 1.w),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide:  BorderSide(color: Colors.red, width: 1.w),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide:  BorderSide(color: Colors.blueAccent, width: 1.w),
        ),
        contentPadding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
    ),
    );
  }
}
