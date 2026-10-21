import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

// Constructor de valores por defecto que tendrán los campos
class ThemeLabState extends Equatable {
  const ThemeLabState({
    this.previewText = 'Escribe tu texto aquí.',
    this.fontFamily = 'Roboto',
    this.fontWeight = FontWeight.normal,
    this.isItalic = false,
    this.fontSize = 18,
  });

  final String previewText;
  final String fontFamily;
  final FontWeight fontWeight;
  final bool isItalic;
  final double fontSize;

  // Se hace una copia y solo se cambia lo que se modificó, no todo
  ThemeLabState copyWith({
    String? previewText,
    String? fontFamily,
    FontWeight? fontWeight,
    bool? isItalic,
    double? fontSize,
  }) {
    // Revisa si cambio algo, si no cabio nada, devuelve el valor que ya tenía
    return ThemeLabState(
      previewText: previewText ?? this.previewText,
      fontFamily: fontFamily ?? this.fontFamily,
      fontWeight: fontWeight ?? this.fontWeight,
      isItalic: isItalic ?? this.isItalic,
      fontSize: fontSize ?? this.fontSize,
    );
  }

  // Lo que cambia
  @override
  List<Object> get props => [
    previewText,
    fontFamily,
    fontWeight,
    isItalic,
    fontSize,
  ];
}

// Es todo lo editable que aparece en la pantalla.
// Si algo cambia, el estado de la pantalla se actualiza y por lo tanto, la pantalla igual.
