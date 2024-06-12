// import 'package:flutter/material.dart';
//
// class MenuButton extends StatelessWidget {
//   const MenuButton({super.key, required this.icon, required this.label, required this.size});
//   final IconData icon;
//   final String label;
//   final double size;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color(0xFF007FB6),
//       // height: size,
//       child: SizedBox(
//          // Adjust the height as needed
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Icon(
//               this.icon,
//               color: Colors.white,
//               size: 45,
//             ),
//             SizedBox(height: 10,),
//             Text(this.label,
//               style: TextStyle(color: Colors.white, fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final double size;
  final VoidCallback? onTap;

  const MenuButton({
    required this.icon,
    required this.label,
    required this.size,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF007FB6),
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: size, color: Colors.white),
            SizedBox(height: 10),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
