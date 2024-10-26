import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    log('$change');
  }

  @override
  void onClose(BlocBase bloc) {
    log('Close: $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    log('Create: $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('Error: $error');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    log('Event: $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    log('Transition: $transition');
  }
}
