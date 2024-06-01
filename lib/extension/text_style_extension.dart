import 'package:flutter/material.dart';

extension TextStyleExtension on TextStyle {
  TextStyle withColor(Color? color) {
    return copyWith(color: color);
  }

  TextStyle get textColor {
    return copyWith();
  }

  TextStyle get underline {
    return copyWith(decoration: TextDecoration.underline);
  }

  TextStyle get shadow {
    return copyWith(
      shadows: [
        const BoxShadow(
          offset: Offset(1, 1),
          blurRadius: 10,
          color: Colors.black,
        )
      ],
    );
  }
}
