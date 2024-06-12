// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:jobapp/screens/discovery_job.dart';
// import 'package:jobapp/widgets/button.dart';
// import 'package:jobapp/widgets/page_view.dart';
// import 'package:jobapp/widgets/partner_page.dart';
// import 'package:jobapp/widgets/profile.dart';
// import 'package:jobapp/widgets/searchbox.dart';// Make sure to import the DiscoveryJobPage
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF007FB6),
//       appBar: _BuildAppBar,
//       body: _BuildBody(context),
//     );
//   }
//
//   AppBar get _BuildAppBar {
//     return AppBar(
//       title: profile,
//       backgroundColor: Color(0xFF007FB6),
//       iconTheme: IconThemeData(color: Colors.white, size: 30),
//       actions: [
//         Padding(
//           padding: const EdgeInsets.only(right: 25),
//           child: IconButton(
//             icon: Icon(Icons.notifications_none_outlined),
//             iconSize: 35,
//             color: Colors.white,
//             onPressed: () {},
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _BuildBody(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Flexible(
//             flex: 1,
//             child: Container(
//               padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
//               child: Row(
//                 children: [
//                   Text(
//                     "Explore and Find \nyour dream jon now",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 26,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
//             child: Column(
//               children: [
//                 SearchInput(),
//               ],
//             ),
//           ),
//           Flexible(
//             flex: 2,
//             child: Container(
//               height: 290,
//               decoration: BoxDecoration(
//                 gradient: RadialGradient(colors: [
//                   Colors.white,
//                   Color(0xFF007FB6),
//                 ]),
//               ),
//               child: GridView.count(
//                 crossAxisCount: 3,
//                 mainAxisSpacing: 2,
//                 crossAxisSpacing: 2,
//                 children: [
//                   MenuButton(
//                     icon: Icons.local_activity_outlined,
//                     label: "Discovery Job",
//                     size: 45,
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => DiscoveryJobPage(),
//                         ),
//                       );
//                     },
//                   ),
//                   MenuButton(
//                       icon: Icons.rate_review_outlined,
//                       label: "Matching Rates \n(%)",
//                       size: 45),
//                   MenuButton(
//                       icon: Icons.saved_search_outlined,
//                       label: "Saved Job",
//                       size: 45),
//                   MenuButton(
//                       icon: Icons.location_history_outlined,
//                       label: "Contact Us ",
//                       size: 45),
//                   MenuButton(
//                       icon: Icons.document_scanner_outlined,
//                       label: "My CV data",
//                       size: 45),
//                   MenuButton(
//                       icon: Icons.location_searching_outlined,
//                       label: "Location",
//                       size: 45),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Container(
//             padding: EdgeInsets.only(left: 20, bottom: 5),
//             child: Row(
//               children: [
//                 Text(
//                   "New and Event",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//           ),
//           PageViews(),
//           SizedBox(
//             height: 10,
//           ),
//           Container(
//             padding: EdgeInsets.only(left: 20, bottom: 5),
//             child: Row(
//               children: [
//                 Text(
//                   "Our Partner",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//           ),
//           Flexible(
//             child: Container(
//               height: 100,
//               child: PageView(
//                 children: [
//                   PartnerPage(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:jobapp/screens/discovery_job.dart';
import 'package:jobapp/screens/profile_information.dart';
import 'package:jobapp/widgets/button.dart';
import 'package:jobapp/widgets/page_view.dart';
import 'package:jobapp/widgets/partner_page.dart';
import 'package:jobapp/widgets/profile.dart';
import 'package:jobapp/widgets/searchbox.dart';// Import the ProfilePage

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF007FB6),
      appBar: _BuildAppBar(context), // Pass the context here
      body: _BuildBody(context),
    );
  }

  AppBar _BuildAppBar(BuildContext context) { // Modify the method to take BuildContext
    return AppBar(
      title: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfilePage(),
            ),
          );
        },
        child: profile, // Your profile widget
      ),
      backgroundColor: Color(0xFF007FB6),
      iconTheme: IconThemeData(color: Colors.white, size: 30),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: IconButton(
            icon: Icon(Icons.notifications_none_outlined),
            iconSize: 35,
            color: Colors.white,
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Widget _BuildBody(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
              child: Row(
                children: [
                  Text(
                    "Explore and Find \nyour dream job now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 10),
            child: Column(
              children: [
                SearchInput(),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              height: 290,
              decoration: BoxDecoration(
                gradient: RadialGradient(colors: [
                  Colors.white,
                  Color(0xFF007FB6),
                ]),
              ),
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                children: [
                  MenuButton(
                    icon: Icons.local_activity_outlined,
                    label: "Discovery Job",
                    size: 45,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DiscoveryJobPage(),
                        ),
                      );
                    },
                  ),
                  MenuButton(
                    icon: Icons.rate_review_outlined,
                    label: "Matching Rates \n(%)",
                    size: 45,
                  ),
                  MenuButton(
                    icon: Icons.saved_search_outlined,
                    label: "Saved Job",
                    size: 45,
                  ),
                  MenuButton(
                    icon: Icons.location_history_outlined,
                    label: "Contact Us ",
                    size: 45,
                  ),
                  MenuButton(
                    icon: Icons.document_scanner_outlined,
                    label: "My CV data",
                    size: 45,
                  ),
                  MenuButton(
                    icon: Icons.location_searching_outlined,
                    label: "Location",
                    size: 45,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 5),
            child: Row(
              children: [
                Text(
                  "New and Event",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          PageViews(),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 5),
            child: Row(
              children: [
                Text(
                  "Our Partner",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              height: 100,
              child: PageView(
                children: [
                  PartnerPage(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
