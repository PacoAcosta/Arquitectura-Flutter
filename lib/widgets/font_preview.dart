import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/bloc/theme_lab_bloc.dart';
import '../features/bloc/theme_lab_state.dart';

class FontPreview extends StatelessWidget {
  const FontPreview({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeLabState state = context.watch<ThemeLabBloc>().state;
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Vista previa',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: colors.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: colors.outlineVariant),
          ),
          child: Text(
            state.previewText.isEmpty
                ? 'Tu texto aparecerá aquí'
                : state.previewText,
            style: TextStyle(
              fontFamily: state.fontFamily,
              fontSize: state.fontSize,
              fontWeight: state.fontWeight,
              fontStyle: state.isItalic ? FontStyle.italic : FontStyle.normal,
            ),
          ),
        ),
      ],
    );
  }
}
