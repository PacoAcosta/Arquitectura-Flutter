import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/bloc/theme_lab_bloc.dart';
import '../features/bloc/theme_lab_event.dart';

// Esto es Stateful porque cambia sin que nosotros le hagamos un cambio directo. Los otros son Stateless porque no cambian solos, nosotros le apretamos algo para que cambie.
class PreviewTextField extends StatefulWidget {
  const PreviewTextField({super.key});

  @override
  State<PreviewTextField> createState() => _PreviewTextFieldState();
}

class _PreviewTextFieldState extends State<PreviewTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: context.read<ThemeLabBloc>().state.previewText,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Tu texto', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        TextField(
          controller: _controller,
          maxLines: 3,
          decoration: const InputDecoration(
            hintText: 'Escribe aquí...',
            border: OutlineInputBorder(),
          ),
          onChanged: (text) =>
              context.read<ThemeLabBloc>().add(PreviewTextChanged(text)),
        ),
      ],
    );
  }
}
