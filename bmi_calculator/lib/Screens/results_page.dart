import 'input_page.dart';
import 'package:flutter/material.dart';
import '../Components/reusable_card.dart';
import '../Components/constance.dart';
import '../Components/bottom_button.dart';

 class ResultsPage extends StatelessWidget {
   ResultsPage({required this.bmiresult,required this.interpretation,required this.resultText});
   final String bmiresult;
   final String resultText;
   final String interpretation;

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('BMI Calculator'),
       ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Expanded(
             child: Container(
               padding: EdgeInsets.all(15.0),
               alignment: Alignment.bottomLeft,
               child: Text('Your Results',
               style: kTitleTextStyle,
               ),
             ),
           ),
           Expanded(
             flex: 5,
               child: Reuseablecard(
                 activeColour: kActiveCardColour,
                 onPress: () {  },
                 cardChild:Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text(resultText.toUpperCase(),
                       style:kResultTextStyle ,
                     ),
                     Text(
                       bmiresult,
                     style: kResultNumberStyle,
                     ),
                     Text(interpretation,
                     textAlign: TextAlign.center,
                     style: kBodyTextStyle,
                     )
                   ],
                 ) ,

               ),
           ),
           BottomButton(
             onTap:(){
               Navigator.push(context,
                 MaterialPageRoute(builder: (context){
                   return InputPage();
                 }
                 ),
               );
             },
             bottomText:'RE-CALCULATOR',
           ),

         ],
       ),
     );
   }
 }
