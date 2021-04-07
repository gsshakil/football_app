// AnimatedContainer(
//                                   duration: Duration(milliseconds: 1000),
//                                   height: 20,
//                                   width: 44,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.only(
//                                       topLeft: Radius.circular(33),
//                                       topRight: Radius.circular(33),
//                                       bottomLeft: Radius.circular(33),
//                                       bottomRight: Radius.circular(33),
//                                     ),
//                                     color: toggleValue
//                                         ? Colors.white
//                                         : Color.fromRGBO(
//                                             255, 255, 255, 0.30000001192092896),
//                                     border: Border.all(
//                                       color: Color.fromRGBO(255, 255, 255, 1),
//                                       width: 1,
//                                     ),
//                                   ),
//                                   child: Stack(
//                                     alignment: Alignment.center,
//                                     children: [
//                                       AnimatedPositioned(
//                                         duration: Duration(milliseconds: 200),
//                                         curve: Curves.easeIn,
//                                         top: 0.0,
//                                         left: toggleValue ? 12 : 0,
//                                         right: toggleValue ? 0 : 12,
//                                         child: InkWell(
//                                           onTap: () {
//                                             setState(() {
//                                               toggleValue = !toggleValue;
//                                             });
//                                           },
//                                           child: AnimatedSwitcher(
//                                               duration:
//                                                   Duration(milliseconds: 200),
//                                               transitionBuilder: (Widget child,
//                                                   Animation<double> animation) {
//                                                 return ScaleTransition(
//                                                     scale: animation,
//                                                     child: child);
//                                               },
//                                               child: toggleValue
//                                                   ? Container(
//                                                       width: 31,
//                                                       height: 18,
//                                                       decoration: BoxDecoration(
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(10),
//                                                         color: Color.fromRGBO(
//                                                             255, 255, 255, .3),
//                                                         border: Border.all(
//                                                           color: Color.fromRGBO(
//                                                               255,
//                                                               255,
//                                                               255,
//                                                               .1),
//                                                           width: 1,
//                                                         ),
//                                                       ),
//                                                       key: UniqueKey(),
//                                                       child: Center(
//                                                         child: Text(
//                                                           'LIVE',
//                                                           textAlign:
//                                                               TextAlign.center,
//                                                           style: TextStyle(
//                                                             color:
//                                                                 Color.fromRGBO(
//                                                                     240,
//                                                                     0,
//                                                                     0,
//                                                                     1),
//                                                             fontFamily:
//                                                                 'Poppins',
//                                                             fontSize: 10,
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     )
//                                                   : Container(
//                                                       width: 31,
//                                                       height: 18,
//                                                       decoration: BoxDecoration(
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(10),
//                                                         color: Color.fromRGBO(
//                                                             255, 255, 255, .9),
//                                                         border: Border.all(
//                                                           color: Color.fromRGBO(
//                                                               255, 255, 255, 1),
//                                                           width: 1,
//                                                         ),
//                                                       ),
//                                                       key: UniqueKey(),
//                                                       child: Center(
//                                                         child: Text(
//                                                           'LIVE',
//                                                           textAlign:
//                                                               TextAlign.center,
//                                                           style: TextStyle(
//                                                             color: Colors.grey,
//                                                             fontFamily:
//                                                                 'Poppins',
//                                                             fontSize: 10,
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     )),
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ),