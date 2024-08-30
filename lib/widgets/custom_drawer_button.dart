import 'package:flutter/material.dart';

// class CustomDrawerButton extends StatelessWidget {
//   const CustomDrawerButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: GridView.count(
//         crossAxisCount: 2,
//         children: const [
//           CustomShape(color: Colors.purple),
//           CustomShape(color: Colors.pink),
//           CustomShape(color: Colors.amber),
//           CustomShape(color: Colors.purple),
//         ],
//       ),
//     );
//   }
// }

class CustomShape extends StatelessWidget {
  final Color color;

  const CustomShape({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: color,
          width: 8,
        ),
      ),
    );
  }
}
