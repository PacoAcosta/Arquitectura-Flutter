import 'package:flutter/material.dart';

sealed class ThemeLabEvent {
  const ThemeLabEvent();
}

class PreviewTextChanged extends ThemeLabEvent {
  const PreviewTextChanged(this.text);
  final String text;
}

class FontFamilyChanged extends ThemeLabEvent {
  const FontFamilyChanged(this.fontFamily);
  final String fontFamily;
}

class FontSizeChanged extends ThemeLabEvent {
  const FontSizeChanged(this.fontSize);
  final double fontSize;
}

class FontItalicChanged extends ThemeLabEvent {
  const FontItalicChanged(this.isItalic);
  final bool isItalic;
}

class FontWeightChanged extends ThemeLabEvent {
  const FontWeightChanged(this.fontWeight);
  final FontWeight fontWeight;
}

// Es todo lo que puede hacer el usuario. Las interacciones con la pantalla
// Es como si fuera el mesero que anota el pedido en un restaurante
