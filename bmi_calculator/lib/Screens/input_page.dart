import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'results_page.dart';
import '../Components/icon_content.dart';
import 'package:flutter/material.dart';
import '../Components/constance.dart';
import '../Components/reusable_card.dart';
import '../Components/bottom_button.dart';
import 'calculator_brain.dart';
enum Gender{
  male,
  female,
  none,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

late int Height=180;
int Weight=20;
int Age=10;

  late Gender SelectedGender=Gender.none;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Reuseablecard(
                      onPress: (){
                        setState(() {
                          SelectedGender=Gender.male;
                        });
                      },
                      activeColour:SelectedGender==Gender.male? kActiveCardColour:kInactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',

                      ),
                    ),
                  ),
                  Expanded(
                    child: Reuseablecard(
                      onPress: (){
                        setState(() {
                          SelectedGender =Gender.female;
                        });
                      },
                      activeColour: SelectedGender==Gender.female? kActiveCardColour:kInactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',

                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Reuseablecard(
                onPress: (){},
                activeColour: kActiveCardColour,
                cardChild: Column(

                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text('HEIGHT',
                    style: kLabel_textstyle,
                    ),
                    Row(

                mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(Height.toString(),
                          style: kNumber_Style,
                        ),
                        Text('cm',
                        style: kLabel_textstyle,
                        ),

                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xff8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xffEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                        RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                        overlayShape:
                        RoundSliderThumbShape(
                          enabledThumbRadius: 20.0,
                        ),
                      ),
                      child: Slider(
                          value: Height.toDouble(),
                          min: 120,
                          max: 220,


                          onChanged:(double newValue) {
                            setState(() {
                              Height=newValue.round();

                            });
                          }

                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Reuseablecard(
                      onPress: (){},
                      activeColour: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('WEIGHT',
                         style: kLabel_textstyle,
                       ),
                       Text(Weight.toString(),
                         style: kNumber_Style,
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           FloatingButton(
                             iconz: FontAwesomeIcons.plus,
                             click:(){
                               setState(() {
                                 Weight++;
                               });
                             } ,
                           ),
                           SizedBox(width: 10.0,),
                           FloatingButton(
                             iconz: FontAwesomeIcons.minus,
                             click:(){
                               setState(() {
                                 Weight--;
                               });
                             } ,
                           ),
                         ],
                       ),
                     ],
                      ),

                    ),
                  ),
                  Expanded(

                    child: Reuseablecard(
                      onPress: (){},
                      activeColour: kActiveCardColour,
                      cardChild:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',
                            style: kLabel_textstyle,
                          ),
                          Text(Age.toString(),
                            style: kNumber_Style,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingButton(
                                iconz: FontAwesomeIcons.plus,
                                click:(){
                                  setState(() {
                                    Age++;
                                  });
                                } ,
                              ),
                              SizedBox(width: 10.0,),
                              FloatingButton(
                                iconz: FontAwesomeIcons.minus,
                                click:(){
                                  setState(() {
                                    Age--;
                                  });
                                } ,
                              ),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),

                ],
              ),),
            BottomButton(
              onTap:(){
                CalculatorBrain calc= CalculatorBrain(height: Height, weight: Weight);


                Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return ResultsPage(
                      bmiresult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterpretation(),
                    );
                  }
                  ),
                );
              },
                bottomText:'CALCULATOR',
            ),

          ],
        ),
      ),
    );
  }
}
