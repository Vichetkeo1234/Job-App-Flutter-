// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class SearchInput extends StatefulWidget {
//   @override
//   State<SearchInput> createState() => _SearchInputState();
// }
//
// class _SearchInputState extends State<SearchInput> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 0),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Flexible(
//                   child: TextField(
//
//                     decoration: InputDecoration(
//                       fillColor: Colors.white,
//                       filled: true,
//                       border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide.none
//                   ),
//                       hintText: "Search jobs ..."
//                     ),
//
//
//                   )
//               ),
//               Container(
//                   margin: EdgeInsets.only (left: 10),
//                   padding: EdgeInsets.all(15),
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(15)
//                   ),
//                   child: Image.asset(
//                       'assets/icons/filter.png'),
//                   width: 65
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:jobapp/screens/filter_search.dart';
import 'package:jobapp/screens/search_list.dart';

class SearchInput extends StatefulWidget {
  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    if (_focusNode.hasFocus) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SearchResultsPage(query: _controller.text),
        ),
      ).then((_) {
        _focusNode.unfocus();
      });
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 0),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: TextField(
                  controller: _controller,
                  focusNode: _focusNode,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Search jobs ...",
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => FilterBottomSheet(),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                      'assets/icons/filter.png'),
                   width: 65
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}