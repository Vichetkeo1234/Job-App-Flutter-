import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class PageViews extends StatefulWidget {
   PageViews({super.key});

  @override
  State<PageViews> createState() => _PageViewsState();
}

class _PageViewsState extends State<PageViews> {
  var lstMovies =[
    'https://i.ytimg.com/vi/ZvxU1494BdM/maxresdefault.jpg',
    'https://cdn.kiripost.com/static/images/fb22x_2.2e16d0ba.fill-960x540.jpg',
    'https://www.khmertimeskh.com/wp-content/uploads/2022/09/Promo-Jr-Account-V2-750x440.jpg',
    'https://i.ytimg.com/vi/xIo1c26Hijk/maxresdefault.jpg',
  ];
  Animation<double>? _nextPage;
  int _currentPage = 0;
  final _pageviewController = PageController(
    initialPage: 0, //start from index 0
    viewportFraction: 1
  );
  @override
  void initState() {
    //set auto scroll with pageview
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if(_currentPage < lstMovies.length -1 ){
        _currentPage++;
      }else{
        _currentPage = 0;
      }
      _pageviewController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 350),
          curve: Curves.easeIn
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(

      child: Container(
        
        padding: EdgeInsets.only(
          left: 20,
          right: 20
        ),

        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20)
                  )
              ),
              child: PageView.builder(
                controller: _pageviewController,
                itemCount: lstMovies.length,
                itemBuilder: ( context,  index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: 6.0,
                      right: 6.0,
                      top: 6.0,
                      bottom: 6.0
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular((20)),
                      child: Image.network(
                        lstMovies[index],
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              bottom: 20,
              left: 150,
              child: SmoothPageIndicator(
                  controller: _pageviewController,  // PageController
                  count:  lstMovies.length,
                  effect:  WormEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    dotColor: Colors.white38,
                    activeDotColor: Colors.white
                  ),  // your preferred effect
                  onDotClicked: (index){

                  }
              ),
            )
          ],
        ),
      ),
    );

  }
}
