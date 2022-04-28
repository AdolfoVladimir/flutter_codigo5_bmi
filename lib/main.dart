
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/pages/input_page.dart';
import 'package:flutter_codigo5_bmi/pages/result_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BMI CALCULATOR",
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff13191B),
        ),
        scaffoldBackgroundColor: Color(0xff13191B),
        sliderTheme: SliderThemeData(
          activeTrackColor: kPrimaryColor,
          inactiveTrackColor: Colors.white38,
          thumbColor: kPrimaryColor,
          thumbShape:  const RoundSliderThumbShape(
              enabledThumbRadius: 17.0
          ),
          overlayColor: kPrimaryColor.withOpacity(0.25),
        ),
      ),
      home: InputPage(),
    );
  }
}
