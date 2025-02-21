import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneText extends StatefulWidget {
  const PhoneText({super.key});

  @override
  State<PhoneText> createState() => _PhoneTextState();
}

class _PhoneTextState extends State<PhoneText> {
  String initialCountry = 'EG';
  PhoneNumber number = PhoneNumber(isoCode: 'EG');
  bool hasError = true;
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      onInputChanged: (PhoneNumber num) {

      },
      onInputValidated: (bool isValid) {

      },
      selectorConfig:  SelectorConfig(
        trailingSpace: true,
        leadingPadding: 15.w,
        setSelectorButtonAsPrefixIcon: true,
        selectorType: PhoneInputSelectorType.DIALOG,
        showFlags: true,
      ),
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.disabled,
      initialValue: number,
      textFieldController: phoneController,
      formatInput: true,
      keyboardType: TextInputType.phone,
      inputDecoration: InputDecoration(
        contentPadding:  EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
              color: hasError ? Colors.red : Colors.blueAccent, width: 1.w),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
    );
  }
}
