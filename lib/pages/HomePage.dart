import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'uwin',
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(240),
          child: Container(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 116,
                  height: 32,
                  child: ListTile(
                    onTap: () {},
                    leading: Icon(Icons.sports_football),
                    title: Text('Football'),
                    trailing: Icon(Icons.arrow_downward_sharp),
                  ),
                ),
                Container(
                  height: 150,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              width: 68,
                              height: 78,
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 10,
                                    child: CircleAvatar(
                                      radius: 34,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        radius: 28,
                                        backgroundImage: AssetImage(
                                            'assets/images/player1.png'),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    child: CircleAvatar(
                                      radius: 14,
                                      backgroundColor:
                                          Theme.of(context).primaryColor,
                                      child: CircleAvatar(
                                        radius: 12,
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage('assets/images/hu.png'),
                                    width: 16,
                                    height: 12,
                                  ),
                                  Text('Oscar W.')
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Winning (In Play) / Won Tips',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(8, 14, 66, 1),
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    letterSpacing: 0),
              ),
              // ****WON TIPS SECTION *****//
              Container(
                height: 130,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) => Container(
                      width: 100,
                      height: 48,
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
                        color: Color.fromRGBO(255, 255, 255, 1),
                      )),
                ),
              ),
              // ****FEATURED TIPS SECTION *****//
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Featured Tips',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(8, 14, 66, 1),
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        letterSpacing: 0),
                  ),
                  Container(
                    height: 130,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (context, index) => Container(
                        width: 104,
                        height: 96,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(
                                    5, 28, 63, 0.05000000074505806),
                                offset: Offset(0, 4),
                                blurRadius: 12)
                          ],
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          // ****FEATURED MATCHES SECTION *****//
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Featured Matches',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(8, 14, 66, 1),
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    letterSpacing: 0),
              ),
              Container(
                height: 130,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) => Container(
                    width: 104,
                    height: 96,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
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
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
