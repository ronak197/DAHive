import 'package:flutter/material.dart';

class Timeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    constraints: BoxConstraints.tightForFinite(width: double.maxFinite, height: 200.0),
                    child: Ink.image(
                      image: AssetImage("assets/dec_photo.jpeg"),
                      fit: BoxFit.cover,
                      child: Container(
                        padding: EdgeInsets.only(left: 20.0,top: 20.0),
                        child: Text(
                          "December 2018",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            letterSpacing: 0.75,
                            wordSpacing: 1.0
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Expanded(
                            flex: int.fromEnvironment(""),
                            child: Container(
                              alignment: Alignment.topCenter,
                              padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                              child: Wrap(
                                crossAxisAlignment: WrapCrossAlignment.start,
                                alignment: WrapAlignment.start,
                                direction: Axis.vertical,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text("TUE",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                      Text("1",style: TextStyle(fontSize: 19.0),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        fit: FlexFit.loose,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlue,
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      border: Border.all(
                                          style: BorderStyle.none
                                      ),
                                    ),
                                    margin: EdgeInsets.only(right: 25.0, top: 10.0),
                                    padding: EdgeInsets.all(10.0),
                                    child: Text("Endeavour Session",style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.75
                                    ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlue,
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      border: Border.all(
                                          style: BorderStyle.none
                                      ),
                                    ),
                                    margin: EdgeInsets.only(right: 25.0, top: 5.0),
                                    padding: EdgeInsets.all(10.0),
                                    child: Text("Endeavour Session",style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.75
                                    ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlue,
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      border: Border.all(
                                          style: BorderStyle.none
                                      ),
                                    ),
                                    margin: EdgeInsets.only(right: 25.0, top: 5.0),
                                    padding: EdgeInsets.all(10.0),
                                    child: Text("Endeavour Session",style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.75
                                    ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
