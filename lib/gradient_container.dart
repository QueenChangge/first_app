// ========== MY PRACTICE
import 'package:flutter/material.dart';
//import 'package:first_app/styletext_container.dart';

// classnya ini nanti bisa dipanggil sama void main
class GradientContainer extends StatelessWidget {
  GradientContainer(this.theColors, this.theColors2,
      {super.key}); //adalah jenis konstruktor biasa

  // kita bisa juga menambah konstruktor manual
  GradientContainer.blue({super.key})
      : theColors = Colors.lightBlue,
        theColors2 = Colors.blueAccent;

  final Color theColors, theColors2;

  var activeDiceImage = 'assets/images/dice-2.png';
  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
    print('change image');
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [theColors, theColors2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      // child: const Center(child: StyleTextContainer('Coba Dunk')),
      child: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            activeDiceImage,
            width: 200,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                foregroundColor: const Color.fromARGB(233, 226, 64, 5),
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll Dice'), //rekomen const text taruh di last
          )
        ]),
      ),
    );
  }
}








// // // ========== LECTURER METHOD
// import 'package:flutter/material.dart';
// import 'package:first_app/styletext_container.dart';

// // classnya ini nanti bisa dipanggil sama void main
// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.coloris});

//   final List<Color> coloris;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//             colors: coloris,
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight),
//       ),
//       child: const Center(child: StyleTextContainer('bobo')),
//     );
//   }
// }



// // ========== MY PRACTICE
// import 'package:flutter/material.dart';
// import 'package:first_app/styletext_container.dart';

// // classnya ini nanti bisa dipanggil sama void main
// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.theColors, this.theColors2, {super.key});

//   final Color theColors, theColors2;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//             colors: [theColors, theColors2],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight),
//       ),
//       child: const Center(child: StyleTextContainer('bobo')),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:first_app/styletext_container.dart';

// // classnya ini nanti bisa dipanggil sama void main
// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key});
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(colors: [
//           Color.fromARGB(255, 112, 45, 228),
//           Color.fromARGB(255, 102, 65, 165)
//         ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//       ),
//       child: const Center(
//         child: StyleTextContainer('bobo')
//       ),
//     );
//   }
// }
