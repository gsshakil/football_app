import 'package:flutter/material.dart';
import 'package:football_app/models/TipsModel.dart';

class FeaturedTipsWidget extends StatelessWidget {
  const FeaturedTipsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 0, bottom: 20),
            child: Text(
              'Featured Tips',
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
            height: 96,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: tipsList.length,
              itemBuilder: (context, index) => Container(
                width: 104,
                height: 96,
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
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
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          tipsList[index].playerName,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(162, 165, 178, 1),
                            fontFamily: 'Poppins',
                            fontSize: 12,
                          ),
                        ),
                        tipsList[index].isFavourite
                            ? Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 18,
                              )
                            : Container(),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tipsList[index].score.toString(),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(8, 14, 66, 1),
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'odds',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(162, 165, 178, 1),
                            fontFamily: 'Poppins',
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
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
