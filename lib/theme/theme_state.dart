import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class ThemeState extends Equatable {
  final bool isDarkThemeOn;
  final ThemeData theme;

  ThemeState(this.isDarkThemeOn, this.theme);

  @override
  List<Object> get props => [isDarkThemeOn, theme];
}
