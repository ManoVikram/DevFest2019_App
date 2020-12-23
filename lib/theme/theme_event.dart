import 'package:equatable/equatable.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class DarkTheme extends ThemeEvent {
  const DarkTheme();
}

class LightTheme extends ThemeEvent {
  const LightTheme();
}
