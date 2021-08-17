import 'package:flutter/material.dart';

class LanguageButton extends StatefulWidget {
  const LanguageButton({ Key? key }) : super(key: key);

  @override
  _LanguageButtonState createState() => _LanguageButtonState();
}

class _LanguageButtonState extends State<LanguageButton> {
  var langText = {
    'vi': 'Tiếng Việt',
    'en': 'English (US)',
  };
  var langImage = {
    'vi': 'assets/images/vi.png',
    'en': 'assets/images/en.png',
  };
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
    );
  }
}