// the naming convention for files in Dart is snake case
// meaning, all of the words will be of small caps and be separated with underscores
// for the classes we are using pascal case
// for the variable names we will be using camel case
import 'package:flutter/material.dart';
import 'package:magic_ball/styled_text.dart';

// dart is a type safe language, which means that
// it will not allow you to set a value of the wrong type
const Alignment alignmentTopLeft = Alignment.topLeft;
// type annotation, we explicitly define the data type

const alignmentBottomRight = Alignment.bottomRight;
// type inference. based on initial value

const topLeft = Alignment.topLeft;
final greeting = "Hello, World!";
// the values are actually replaced during compile time
// the values should already be known like literals

final bottomRight = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 89, 255),
            Color.fromARGB(249, 21, 0, 60),
          ],
          begin: alignmentTopLeft,
          end: alignmentBottomRight,
        ),
      ),
      child: const Center(child: StyledText("YAWA MAN DIAY KA!")),
    );
  }
}
