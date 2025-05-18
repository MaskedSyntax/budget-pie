import 'package:budgetpie/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorTheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 97, 59, 117),
);

var kDarkColorTheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 10, 1, 50),
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((
  //   fn,
  // ) {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorTheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kDarkColorTheme.onPrimaryContainer,
          foregroundColor: kDarkColorTheme.onPrimary,
        ),
        cardTheme: CardTheme().copyWith(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: kDarkColorTheme.secondaryContainer,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorTheme.primaryContainer,
          ),
        ),
        // textTheme: ThemeData().textTheme.copyWith(
        //   titleLarge: TextStyle(
        //     fontWeight: FontWeight.bold,
        //     color: kDarkColorTheme.onSecondaryContainer,
        //     fontSize: 16,
        //   ),
        // ),
      ),

      theme: ThemeData().copyWith(
        colorScheme: kColorTheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorTheme.onPrimaryContainer,
          foregroundColor: kColorTheme.onPrimary,
        ),
        cardTheme: CardTheme().copyWith(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: kColorTheme.secondaryContainer,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorTheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: kColorTheme.onSecondaryContainer,
            fontSize: 16,
          ),
        ),
      ),

      home: Expenses(),
    ),
  );
  // });
}
