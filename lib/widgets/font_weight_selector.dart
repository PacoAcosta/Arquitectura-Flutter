import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/bloc/theme_lab_bloc.dart';
import '../features/bloc/theme_lab_event.dart';

class FontWeightSelector extends StatelessWidget {
  const FontWeightSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final selected = context.select((ThemeLabBloc b) => b.state.fontWeight);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Grosor de letra',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<FontWeight>(
          initialValue: selected,
          decoration: const InputDecoration(border: OutlineInputBorder()),
          items: const [
            DropdownMenuItem(value: FontWeight.normal, child: Text('Regular')),
            DropdownMenuItem(value: FontWeight.bold, child: Text('Bold')),
          ],
          onChanged: (value) {
            if (value == null) return;
            context.read<ThemeLabBloc>().add(FontWeightChanged(value));
          },
        ),
      ],
    );
  }
}
