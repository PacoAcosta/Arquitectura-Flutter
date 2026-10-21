import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/bloc/theme_lab_bloc.dart';
import '../features/bloc/theme_lab_event.dart';

class FontFamilySelector extends StatelessWidget {
  const FontFamilySelector({super.key});

  static const _fonts = ['Nunito', 'Roboto', 'Inter', 'Ubuntu'];

  @override
  Widget build(BuildContext context) {
    final selected = context.select((ThemeLabBloc b) => b.state.fontFamily);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Tipo de letra',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          initialValue: selected,
          decoration: const InputDecoration(border: OutlineInputBorder()),
          items: [
            for (final font in _fonts)
              DropdownMenuItem(value: font, child: Text(font)),
          ],
          onChanged: (value) {
            if (value == null) return;
            context.read<ThemeLabBloc>().add(FontFamilyChanged(value));
          },
        ),
      ],
    );
  }
}
