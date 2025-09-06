import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app5/calculator/app_colors.dart';
import 'package:whats_app5/calculator/calculator_btr.dart';

class CalculatorScreen extends StatefulWidget{
  static const String routeName = 'calculator';

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String resText='';

      @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
             Expanded(
               flex: 2,
               child: Container(
                 alignment: Alignment.centerRight,

                 child: Text(resText,
                 style: TextStyle(
                   fontSize: 35,
                   fontWeight: FontWeight.w500,
                   color: AppColors.whiteColor
                 ),),
               ),
             ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                       children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CalculatorButton(text: 'AC',
                            backgroundColor: AppColors.grayColor,
                            textColor: AppColors.lightGrayColor,
                            onBtnClick:onClearClick ,),
                            CalculatorButton(text: '>',
                              IsIcon: true,
                              backgroundColor: AppColors.grayColor,
                              textColor: AppColors.lightGrayColor,
                              onBtnClick:onBackSpace ,),
                            CalculatorButton(text: '/',
                              backgroundColor: AppColors.darkBlueColor,
                              onBtnClick:onOperatorClick ,),

                          ],
                        ),
                      ),
                         Expanded(
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                             children: [
                               CalculatorButton(text: '7',
                                 onBtnClick:onDigitClick ,
                                 ),
                               CalculatorButton(text: '8',
                                 onBtnClick:onDigitClick ,
                               ),
                               CalculatorButton(text: '9',
                                 onBtnClick:onDigitClick ,
                                  ),

                             ],
                           ),
                         ),
                         Expanded(
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                             children: [
                               CalculatorButton(text: '4',
                                 onBtnClick:onDigitClick ,
                               ),
                               CalculatorButton(text: '5',
                                 onBtnClick:onDigitClick ,
                               ),
                               CalculatorButton(text: '6',
                                 onBtnClick:onDigitClick ,
                               ),

                             ],
                           ),
                         ),
                         Expanded(
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                             children: [
                               CalculatorButton(text: '1',
                                 onBtnClick:onDigitClick ,
                               ),
                               CalculatorButton(text: '2',
                                 onBtnClick:onDigitClick ,
                               ),
                               CalculatorButton(text: '3',
                                 onBtnClick:onDigitClick ,
                               ),

                             ],
                           ),
                         ),
                         SizedBox(height: 10,),
                         Expanded(
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                             children: [
                               CalculatorButton(text: '0',
                                 onBtnClick:onDigitClick ,
                                 flex: 2,
                               ),
                               CalculatorButton(text: '.',
                                 onBtnClick:onDigitClick ,
                               ),


                             ],
                           ),
                         ),




                    ],),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 15
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CalculatorButton(text: '*',

                            backgroundColor: AppColors.darkBlueColor,
                            onBtnClick:onOperatorClick ,
                            ),
                          CalculatorButton(text: '-',

                            backgroundColor: AppColors.darkBlueColor,
                            onBtnClick:onOperatorClick ,
                            ),
                          CalculatorButton(text: '+',
                            flex: 2,
                            backgroundColor: AppColors.darkBlueColor,
                            onBtnClick:onOperatorClick ,
                           ),
                          CalculatorButton(text: '=',

                            backgroundColor: AppColors.lightBlueColor,
                            textColor: AppColors.lightWhiteColor,
                            onBtnClick:onEqualClick ,),


                      ],),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onDigitClick(String text){
        if(text=='.' && resText.contains('.')){
          return;
        }
resText += text;


setState(() {

});
      }
      String lhs = '';
      String operator ='';
      void onOperatorClick(String clickedOperator){
        if(operator.isEmpty){
          lhs=resText;

        }else{
          String rhs =resText;
         lhs = calculate(lhs,operator,rhs);

        }
        operator=clickedOperator;
        resText='';
        setState(() {

        });

      }

      void onEqualClick(String text){
        String rhs =resText;
        resText= calculate(lhs, operator, rhs);
        lhs='';
        operator='';
        setState(() {

        });
      }

      void onClearClick(String text){
        resText='';
        lhs='';
        operator='';
        setState(() {

        });
      }

      void onBackSpace(String text){
        if(resText.isEmpty){
          return ;
        }
        resText=resText.substring(0,resText.length-1);
        setState(() {

        });

      }

}

String calculate(String lhs, String operator, String rhs) {
  double num1 = double.parse(lhs);
  double num2 = double.parse(rhs);
  double res =0.0;
  if(operator=='+'){
    res=num1+num2;
  } else if(operator == '-'){
    res=num1-num2;
  }else if(operator == '*'){
    res=num1*num2;
  }else if(operator == '/'){
    res=num1/num2;
  }
  return res.toString();
}