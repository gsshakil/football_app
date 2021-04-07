import 'package:flutter/material.dart';
import 'package:football_app/models/WonTipsModel.dart';
import 'package:football_app/widgets/PlayerHorizontalList.dart';
import 'package:football_app/widgets/FeaturedTipsWidget.dart';
import 'package:football_app/widgets/FeaturedMatchesWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 6.0,
                ),
              ],
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.8, 1],
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).accentColor
                ],
              ),
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                // *** Bckground Gradient ****////
                Container(
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3, 1],
                      colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(context).accentColor
                      ],
                    ),
                  ),
                ),

                // *** App Bar *** //
                Positioned(
                  top: 30,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: MediaQuery.of(context).size.width,
                        height: 54,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                                icon: Icon(Icons.search),
                                onPressed: () {},
                                color: Colors.white),
                            Text(
                              'uwin',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  height: 1.4),
                            ),
                            IconButton(
                                icon: Icon(Icons.settings),
                                onPressed: () {},
                                color: Colors.white),
                          ],
                        ),
                      ),
                      // *** Game DropDown Button *** //
                      Container(
                        width: 116,
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Color.fromRGBO(255, 255, 255, .25),
                        ),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.sports_football,
                                color: Colors.white,
                                size: 18,
                              ),
                              Text(
                                'Football',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),

                      // *** Player List Section *** //
                      PlayerHorizontalList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          buildWonTips(),
        ],
      )),
    );
  }

  Container buildWonTips() {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Text(
              'Winning (In Play) / Won Tips',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(8, 14, 66, 1),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  letterSpacing: 0),
            ),
          ),
          Container(
            height: 48,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: wonTips.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 38,
                    maxHeight: 40,
                  ),
                  child: Container(
                    width: 100,
                    height: 48,
                    margin: EdgeInsets.only(left: 15),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(41),
                            topRight: Radius.circular(41),
                            bottomLeft: Radius.circular(41),
                            bottomRight: Radius.circular(41),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(
                                    5, 28, 63, 0.05000000074505806),
                                offset: Offset(0, 4),
                                blurRadius: 12)
                          ],
                          color: _currentIndex == index
                              ? Color.fromRGBO(255, 255, 255, 1)
                              : Color.fromRGBO(255, 255, 255, 0.35)),
                      child: Row(
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              color: Theme.of(context).primaryColor,
                            ),
                            child: Center(
                              child: Text(
                                wonTips[index].icon,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            wonTips[index].time,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontFamily: 'SF Pro Text',
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          FeaturedTipsWidget(),

          // ****FEATURED MATCHES SECTION *****//
          FeaturedMatchesWidget(),
        ],
      ),
    );
  }
}
