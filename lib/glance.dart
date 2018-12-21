import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Glance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primaryColor: Color(0xff00b4c1),
      ),
      home: new GlancePage(),
    );
  }
}

class GlancePage extends StatefulWidget {
  @override
  _GlancePageState createState() => _GlancePageState();
}

class _GlancePageState extends State<GlancePage> {
  
  List<Color> colorList = [Colors.white, Colors.blue];
  List<Color> ieColorList = [Colors.white, Color(0xFFe7f3fe)];
  var dateFormatter = DateFormat("EEEE d/M");
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorList,
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter
        ),
      ),
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          new Center(
            child: new Text(dateFormatter.format(DateTime.now()),style: TextStyle(fontSize: 20.0),)
          ),
          new Padding(padding: EdgeInsets.only(top: 20.0)),
          new Column(
            children: <Widget>[
              new Card(
                child: Column(
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            top: 10.0
                          ),
                          child: Text(
                            "Student Body Government",
                            style: TextStyle(
                              color: Color(0xff0a6fc2),
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                child: Icon(
                                  Icons.star_border,
                                  color: Colors.blue,
                                ),
                                padding: EdgeInsets.only(
                                  top: 5.0,
                                  right: 10.0
                                )
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10.0),
                          margin: EdgeInsets.only(left: 10.0),
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color: Colors.blue,
                                width: 3.0
                              )
                            ),
                          ),
                          child: new Column(
                            children: <Widget>[
                              Container(width: 250.0, child: new Text("Endeavour session",style: TextStyle(fontSize: 16.0),)),
                              SizedBox(
                                height: 3.0,
                              ),
                              Container(width: 250.0,child: new Text("Prepare for GRE", style: TextStyle(color: Colors.grey),)),
                            ],
                          ),
                        ),
                        Expanded(
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,

                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    new Text(
                                      "8:00",
                                      style: TextStyle(
                                        color: Colors.black54
                                      ),
                                    ),
                                    new Text(
                                      "pm",
                                      style: TextStyle(
                                        color: Colors.black54
                                      ),
                                    )
                                  ],
                                )
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            bottom: 5.0,
                            top: 5.0
                          ),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.person_add,
                                color: Colors.blue,
                                size: 15.0,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "Join a Team/Volunteer",
                                style: TextStyle(
                                  color: Colors.blue
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          new Card(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 5.0,
                ),
                new Text("Interested Events",style: TextStyle(fontSize: 20.0),),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: ieColorList
                    ),
                  ),
                  child: new Row(
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Icon(Icons.notifications_active,color: Colors.blue,size: 20.0,),
                        margin: EdgeInsets.only(left: 8.0,right: 8.0),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5.0),
                        margin: EdgeInsets.only(left: 0.0),
                        child: new Column(
                          children: <Widget>[
                            Container(width: 200.0, child: new Text("Endeavour session",style: TextStyle(fontSize: 16.0),)),
                            SizedBox(
                              height: 3.0,
                            ),
                            Container(width: 200.0,child: new Text("Reminder set for 7:30 pm", style: TextStyle(color: Colors.grey),)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    new Text(
                                      "8:00",
                                      style: TextStyle(
                                          color: Colors.black54
                                      ),
                                    ),
                                    new Text(
                                      "pm",
                                      style: TextStyle(
                                          color: Colors.black54
                                      ),
                                    )
                                  ],
                                )
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}