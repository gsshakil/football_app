import 'package:flutter/material.dart';

// stores ExpansionPanel state information
class Item {
  Item({
    @required this.expandedValue,
    @required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class MatchesPage2 extends StatefulWidget {
  @override
  _MatchesPage2State createState() => _MatchesPage2State();
}

class _MatchesPage2State extends State<MatchesPage2> {
  bool toggleValue = false;
  final List<Item> _data = generateItems(5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 140,
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
                              'All games',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  height: 1.4),
                            ),
                            Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.calendar_today),
                                    onPressed: () {},
                                    color: Colors.white),
                              ],
                            ),
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _data[index].isExpanded = !isExpanded;
              });
            },
            children: _data.map<ExpansionPanel>((Item item) {
              return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return buildAccordionCardHeader();
                },
                body: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, snapshot) {
                      return buildAccordionCardBody();
                    }),
                isExpanded: item.isExpanded,
              );
            }).toList(),
          ),
        ],
      )),
    );
  }

  Widget buildAccordionCardBody() {
    return Card(
      child: ListTile(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '10:40',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(162, 165, 178, 1),
                  fontFamily: 'Poppins',
                  fontSize: 12,
                ),
              ),
              Text(
                'FT',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(162, 165, 178, 1),
                  fontFamily: 'Poppins',
                  fontSize: 12,
                ),
              ),
            ],
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(242, 244, 250, 1),
                      border: Border.all(
                        color: Color.fromRGBO(242, 244, 250, 1),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(Radius.elliptical(40, 40)),
                    ),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: AssetImage('assets/images/teams/team1.png'),
                          width: 12,
                          height: 12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Manchester United',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(8, 14, 66, 1),
                      fontFamily: 'Poppins',
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(242, 244, 250, 1),
                      border: Border.all(
                        color: Color.fromRGBO(242, 244, 250, 1),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(Radius.elliptical(40, 40)),
                    ),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: AssetImage('assets/images/teams/team2.png'),
                          width: 12,
                          height: 12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Manchester United',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(8, 14, 66, 1),
                      fontFamily: 'Poppins',
                      fontSize: 12,
                    ),
                  )
                ],
              )
            ],
          ),
          trailing: Container(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '2',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 188, 18, 1),
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '2',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 188, 18, 1),
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                IconButton(
                    icon: Icon(Icons.star_border_outlined), onPressed: () {})
              ],
            ),
          ),
          onTap: () {}),
    );
  }

  ListTile buildAccordionCardHeader() {
    return ListTile(
        leading: Image(
          image: AssetImage('assets/images/flags/de.png'),
          width: 24,
          height: 24,
        ),
        title: Text(
          'Premier League',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Color.fromRGBO(8, 14, 66, 1),
            fontFamily: 'Roboto',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
