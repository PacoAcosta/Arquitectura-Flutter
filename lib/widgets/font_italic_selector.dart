import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/bloc/theme_lab_bloc.dart';
import '../features/bloc/theme_lab_event.dart';

class FontItalicSelector extends StatelessWidget {
  const FontItalicSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final isItalic = context.select((ThemeLabBloc b) => b.state.isItalic);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text('Cursiva', style: TextStyle(fontWeight: FontWeight.bold)),
        Switch(
          value: isItalic,
          onChanged: (value) =>
              context.read<ThemeLabBloc>().add(FontItalicChanged(value)),
        ),
      ],
    );
  }
}
