// the naming convention for files in Dart is snake case
// meaning, all of the words will be of small caps and be separated with underscores
// for the classes we are using pascal case
// for the variable names we will be using camel case
import 'package:flutter/material.dart';
import 'package:magic_ball/magic_ball_widget.dart';

/* 
Dart is a type safe language, which means that it will not allow you to set 
a value of the wrong type .
Uses Type Inferencing - determines the data type basd on the initial value
Dynamic - it can be anything unsafe & needdeed to be cast to a specific data type
*/

const Alignment alignmentTopLeft = Alignment.topLeft;
// Type Annotation - we can explicitly define the data type

const alignmentBottomRight = Alignment.bottomRight;
// Type Inference - based on initial value

const topLeft = Alignment.topLeft;
// the values are actually replaced during compile time
// the values should already be known like literals, enums, etc.

final bottomRight = Alignment.bottomRight;
// final - can only be set once. Known during run time.

List<String> listofWords = [];
List<int> listOfNumbers = [1, 2, 3, 4, 5];

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.yellow,
          ],
          begin: alignmentTopLeft,
          end: alignmentBottomRight,
        ),
      ),
      child: const Center(
        child: MagicBallWidget(),
      ),
    );
  }
}
