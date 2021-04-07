import 'package:flutter/material.dart';
import 'package:football_app/models/WonTipsModel.dart';

class WonTipsWidget extends StatelessWidget {
  const WonTipsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              itemBuilder: (context, index) => ConstrainedBox(
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
                            color:
                                Color.fromRGBO(5, 28, 63, 0.05000000074505806),
                            offset: Offset(0, 4),
                            blurRadius: 12)
                      ],
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
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
        ],
      ),
    );
  }
}
