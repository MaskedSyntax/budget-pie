import 'package:budgetpie/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorTheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 97, 59, 117),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorTheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorTheme.onPrimaryContainer,
          foregroundColor: kColorTheme.onPrimary,
        ),
        cardTheme: CardTheme().copyWith(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: kColorTheme.secondaryContainer
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorTheme.primaryContainer
          )
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: kColorTheme.onSecondaryContainer,
            fontSize: 16
          )
        )
      ),
      home: Expenses(),
    ),
  );
}
