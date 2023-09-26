


import 'package:flutter/material.dart';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  backgroundColor: Colors.amber,
  primary: Colors.black87,
  // minimumSize: Size(88, 36),
  fixedSize: Size(350, 60),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
  ),
);

final ButtonStyle GButtonStyle = TextButton.styleFrom(
  backgroundColor: Colors.grey.shade200,
  primary: Colors.black87,
  // minimumSize: Size(88, 36),
  fixedSize: Size(350, 60),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
  ),
);
