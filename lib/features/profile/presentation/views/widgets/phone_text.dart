import 'package:flutter/material.dart';
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
        // يمكنك هنا التعامل مع الرقم المُدخل
      },
      onInputValidated: (bool isValid) {
        // يمكنك هنا التعامل مع حالة التحقق من صحة الرقم
      },
      selectorConfig: const SelectorConfig(
        trailingSpace: true,
        leadingPadding: 15,
        setSelectorButtonAsPrefixIcon: true,
        selectorType: PhoneInputSelectorType.DIALOG,
        showFlags: true, // عرض علم الدولة (افتراضيًا true)
      ),
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.disabled,
      initialValue: number,
      textFieldController: phoneController,
      formatInput: true,
      keyboardType: TextInputType.phone,
      inputDecoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
              color: hasError ? Colors.red : Colors.blueAccent, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
