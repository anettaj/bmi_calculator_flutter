import 'package:flutter/material.dart';
import './Screens/input_page.dart ';
void main() {
  runApp(BMICalculator());
}
class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        colorScheme: ColorScheme.light(
          primary:Color(0xFF0A0E21),

           ),
      ),

      home: InputPage(),
    );
  }
}
