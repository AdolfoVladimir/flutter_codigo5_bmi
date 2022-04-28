import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/brain.dart';
import 'package:flutter_codigo5_bmi/widget.dart';


class ResultPage extends StatelessWidget {
    int height;
    int weight;
    BMIBrain? bmiBrain;
    ResultPage({required this.weight, required this.height,});

  @override
  Widget build(BuildContext context) {
    bmiBrain = BMIBrain(weight: weight, height: height);


    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Results",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    bmiBrain!.getResult(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.greenAccent,
                    ),
                  ),
                  Text(
                    bmiBrain!.calculateBMI().toStringAsFixed(1),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 70.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmiBrain!.getInterpretation(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              color: Color(0xff1F232C),
            ),
          ),
          NavigatorButton(
            text: "RE-CALCULATE",
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}