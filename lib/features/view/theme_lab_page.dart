import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fontsproject/widgets/font_italic_selector.dart';

import '../bloc/theme_lab_bloc.dart';
import '../../widgets/font_family_selector.dart';
import '../../widgets/font_preview.dart';
import '../../widgets/font_size_slider.dart';
import '../../widgets/font_weight_selector.dart';
import '../../widgets/preview_text_field.dart';

class ThemeLabPage extends StatelessWidget {
  const ThemeLabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeLabBloc(),
      child: const ThemeLabView(),
    );
  }
}

class ThemeLabView extends StatelessWidget {
  const ThemeLabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ThemeLab')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Probador de tipografías',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              'Escribe un texto y experimenta con diferentes fuentes.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            const PreviewTextField(),
            const SizedBox(height: 24),
            const FontFamilySelector(),
            const SizedBox(height: 24),
            const FontWeightSelector(),
            const SizedBox(height: 24),
            const FontItalicSelector(),
            const SizedBox(height: 24),
            const FontSizeSlider(),
            const SizedBox(height: 24),
            const FontPreview(),
          ],
        ),
      ),
    );
  }
}
