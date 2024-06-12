import 'package:flutter/material.dart';

class PartnerPage extends StatelessWidget {
  var logoList =[
    'https://www.acledabank.com.kh/kh/assets/download_material/download-logo-icon.png',
    'https://www.acledabank.com.kh/kh/assets/download_material/download-logo-icon.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF007FB6),
            border: Border.all(color: Colors.white70),
            borderRadius: BorderRadius.all(
                Radius.circular(20)
            )
        ),
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF007FB6),
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.all(
                              Radius.circular(20)
                          )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular((20)),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNANQ1qerBgaEPpwUYHqd-3MZfwxE25p2BdEt2Z25FzsGEkQDyranj7KZtH6765cMP9e0&usqp=CAU"))),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 20.0
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF007FB6),
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.all(
                              Radius.circular(20)
                          )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular((20)),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBAUzb6U_5HNpHDbxHK0oRf2oiw6rmPytxRQ&s"))),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 20.0
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF007FB6),
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.all(
                              Radius.circular(20)
                          )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular((20)),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHjPDYwReKNsqprji7AKP5r3ZKXo5pUZytMA&s"))),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 20.0
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.all(
                              Radius.circular(20)
                          )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular((20)),
                          child: Image.network("https://istad.co/resources/img/logo_md.png"))),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 20.0
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF007FB6),
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.all(
                              Radius.circular(20)
                          )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular((20)),
                          child: Image.network("https://media.licdn.com/dms/image/D5622AQEp54t6PCmZGA/feedshare-shrink_800/0/1701741266293?e=2147483647&v=beta&t=-Of6Ao-DXg78pS5icVcIvu7vc4rLMM5Nv5Tf9_lel90"))),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 20.0
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF007FB6),
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.all(
                              Radius.circular(20)
                          )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular((20)),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNANQ1qerBgaEPpwUYHqd-3MZfwxE25p2BdEt2Z25FzsGEkQDyranj7KZtH6765cMP9e0&usqp=CAU"))),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 20.0
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF007FB6),
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.all(
                              Radius.circular(20)
                          )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular((20)),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBAUzb6U_5HNpHDbxHK0oRf2oiw6rmPytxRQ&s"))),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 20.0
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF007FB6),
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.all(
                              Radius.circular(20)
                          )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular((20)),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHjPDYwReKNsqprji7AKP5r3ZKXo5pUZytMA&s"))),
                ),
                // Add more AppIcon widgets as needed
              ],
            ),
          ),
      ),
    );


  }
}

// class AppIcon extends StatelessWidget {
//   final IconData icon;
//   final bool discount;
//   final Color backgroundColor;
//
//   AppIcon({
//     required this.icon,
//     required this.discount,
//     required this.backgroundColor,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Stack(
//             children: [
//               CircleAvatar(
//                 radius: 32.0,
//                 backgroundColor: backgroundColor,
//                 child: Icon(
//                   icon,
//                   size: 32.0,
//                   color: Colors.white,
//                 ),
//               ),
//               if (discount)
//                 Positioned(
//                   top: 0,
//                   right: 0,
//                   child: Container(
//                     padding: const EdgeInsets.all(4.0),
//                     decoration: BoxDecoration(
//                       color: Colors.red,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Text(
//                       '%',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//             ],
//           ),
//           SizedBox(height: 8.0),
//
//         ],
//       ),
//     );
//   }
// }
