import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Apptheme {
  final BuildContext context;
  Apptheme(this.context);

  static const backgroundColor = Color(0xffffffff);
  static const primaryColor = Color(0xff2BB5F3);

  static const secondaryColor = Color(0xffD8EAF2);
  static const assentColor = Color(0xff253157);

  TextStyle boldText = const TextStyle(
    color: assentColor,
    fontWeight: FontWeight.w900,
    fontFamily: "Circular_Bold",
  );
  TextStyle thinText = const TextStyle(
    color: assentColor,
    fontWeight: FontWeight.w100,
    //fontFamily: "Circular_Bold",
  );
  TextStyle normalText = const TextStyle(
    color: assentColor,
    fontWeight: FontWeight.w400,
    fontFamily: "Circular_Bold",
  );

  static ThemeData theme = ThemeData(
    primaryTextTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 10,
        color: Colors.red,
      ),
      bodyText2: TextStyle(
        fontSize: 5,
        color: Colors.red,
      ),
    ),
    accentIconTheme: const IconThemeData(
      color: primaryColor,
    ),
    scaffoldBackgroundColor: backgroundColor,
    fontFamily: "Circular_Bold",
    accentColor: primaryColor,
    buttonTheme: const ButtonThemeData(
      buttonColor: assentColor,
      padding: EdgeInsets.symmetric(vertical: 20),
      minWidth: double.maxFinite,
      colorScheme: ColorScheme.light(brightness: Brightness.dark),
    ),
    buttonColor: primaryColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          primaryColor,
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 10,
          ),
        ),
        minimumSize: MaterialStateProperty.all(
          const Size(
            34,
            50,
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          backgroundColor,
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 20,
            fontFamily: "Circular",
          ),
        ),
        minimumSize: MaterialStateProperty.all(
          const Size(
            34,
            50,
          ),
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 3,
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: backgroundColor,
      ),
      color: backgroundColor,
      centerTitle: false,
      brightness: Brightness.light,
      iconTheme: IconThemeData(
        color: Colors.black,
        opacity: 18,
        size: 25,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 12.0,
        ),
        headline6: TextStyle(
          fontSize: 25.0,
          fontStyle: FontStyle.italic,
        ),
        bodyText2: TextStyle(
          fontSize: 14.0,
          fontFamily: 'Hind',
        ),
      ),
    ),
    toggleableActiveColor: primaryColor,
    inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
        labelStyle: TextStyle(
          color: Color(0xff253157),
        ),
        hintStyle: TextStyle(
          color: Color(0xff253157),
        )),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
    ),
  );
}
