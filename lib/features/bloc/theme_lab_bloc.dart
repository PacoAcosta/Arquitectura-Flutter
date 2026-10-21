import 'package:flutter_bloc/flutter_bloc.dart';

import 'theme_lab_event.dart';
import 'theme_lab_state.dart';

class ThemeLabBloc extends Bloc<ThemeLabEvent, ThemeLabState> {
  ThemeLabBloc() : super(const ThemeLabState()) {
    on<PreviewTextChanged>(
      (event, emit) => emit(state.copyWith(previewText: event.text)),
    );
    on<FontFamilyChanged>(
      (event, emit) => emit(state.copyWith(fontFamily: event.fontFamily)),
    );
    on<FontWeightChanged>(
      (event, emit) => emit(state.copyWith(fontWeight: event.fontWeight)),
    );
    on<FontSizeChanged>(
      (event, emit) => emit(state.copyWith(fontSize: event.fontSize)),
    );
    on<FontItalicChanged>(
      (event, emit) => emit(state.copyWith(isItalic: event.isItalic)),
    );
  }
}
