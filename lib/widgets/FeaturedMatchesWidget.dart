import 'package:flutter/material.dart';
import 'package:football_app/models/MatchesModel.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class FeaturedMatchesWidget extends StatelessWidget {
  const FeaturedMatchesWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            transform: Matrix4.translationValues(0, 10, 0),
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Featured Matches',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(8, 14, 66, 1),
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0),
            ),
          ),
          Container(
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: matchesList.length,
              itemBuilder: (context, index) => Container(
                width: 104,
                height: 96,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(5, 28, 63, 0.05000000074505806),
                        offset: Offset(0, 4),
                        blurRadius: 12)
                  ],
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 110,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(242, 244, 250, 1),
                              border: Border.all(
                                color: Color.fromRGBO(242, 244, 250, 1),
                                width: 2,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(40, 40)),
                            ),
                            child: Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image(
                                  image: AssetImage(
                                      matchesList[index].team1LogoUrl),
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'VS',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(34, 34, 34, 1),
                              fontFamily: 'Poppins',
                              fontSize: 10,
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(242, 244, 250, 1),
                              border: Border.all(
                                color: Color.fromRGBO(242, 244, 250, 1),
                                width: 2,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(40, 40)),
                            ),
                            child: Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image(
                                  image: AssetImage(
                                      matchesList[index].team2LogoUrl),
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 120,
                          child: Text(
                            matchesList[index].status,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(8, 14, 66, 1),
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          matchesList[index].dateTime,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(162, 165, 178, 1),
                            fontFamily: 'Poppins',
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    CircularPercentIndicator(
                      radius: 50.0,
                      lineWidth: 5.0,
                      animation: true,
                      startAngle: 0.0,
                      animationDuration: 1200,
                      percent: (matchesList[index].completion * .01),
                      center: new Text(
                        "${matchesList[index].completion.toStringAsFixed(0)}%",
                        style: TextStyle(
                          color: Color.fromRGBO(12, 181, 96, 1),
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                      ),
                      progressColor: Colors.green,
                      circularStrokeCap: CircularStrokeCap.butt,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
