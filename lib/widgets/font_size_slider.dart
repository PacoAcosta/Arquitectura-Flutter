import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/bloc/theme_lab_bloc.dart';
import '../features/bloc/theme_lab_event.dart';

class FontSizeSlider extends StatelessWidget {
  const FontSizeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = context.select((ThemeLabBloc b) => b.state.fontSize);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Tamaño de letra',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('${fontSize.round()}'),
          ],
        ),
        Slider(
          min: 12,
          max: 64,
          divisions: 26,
          value: fontSize,
          label: fontSize.round().toString(),
          onChanged: (value) =>
              context.read<ThemeLabBloc>().add(FontSizeChanged(value)),
        ),
      ],
    );
  }
}
