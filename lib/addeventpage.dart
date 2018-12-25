import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'event.dart';

class AddEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddEventDetails(),
    );
  }
}

class AddEventDetails extends StatefulWidget {
  @override
  _AddEventDetailsState createState() => _AddEventDetailsState();
}

class _AddEventDetailsState extends State<AddEventDetails>  {

  final _formKey = GlobalKey<FormState>();
  Event event = new Event();
  DateTime dateTime = new DateTime.now();
  TimeOfDay timeOfDay = new TimeOfDay.now();

  String date = "Select Date";
  String time = "Select Time";

  bool teamRequired = false;
  bool volunteerRequired = false;

  void trChanged (bool value){
    setState(() {
      teamRequired = value;
    });
  }

  void vrChanged (bool value){
    setState(() {
      volunteerRequired = value;
    });
  }

  Future<Null> _selectedDate (BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: new DateTime(2018),
        lastDate: new DateTime(2019)
    );

    if(picked != null){
      setState(() {
        dateTime = picked;
        date = dateTime.toString().substring(0,10);
      });
    }
  }

  Future<Null> _selectedTime (BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
    );

    if(picked != null){
      setState(() {
        timeOfDay = picked;
        time = "Start Time: " + timeOfDay.toString().substring(10,15);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.close,color: Colors.black54,),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10.0,right: 10.0,bottom: 10.0),
            width: 70.0,
            child: CupertinoButton(
              padding: EdgeInsets.all(0.0),
              child: Text("Save"),
              onPressed: ()=>{},
              color: Color(0xff0066ff),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 30.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Title",
                    contentPadding: EdgeInsets.only(left: 50.0,right: 20.0, top: 10.0, bottom: 10.0),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black87,
                  ),
                  validator: (value) {
                    if(value.isEmpty){
                      return 'Please Enter Title';
                    }
                    else event.eventName = value;
                  },
                ),
                Divider(color: Colors.grey,),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.group_work),
                    hintText: "Organised by",
                    contentPadding: EdgeInsets.only(left: 50.0,right: 20.0, top: 10.0, bottom: 10.0),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black87,
                  ),
                  validator: (value) {
                    if(value.isEmpty){
                      return 'Add Venue';
                    }
                    else event.organisedBy = value;
                  },
                ),
                Divider(color: Colors.grey,),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.location_on),
                    hintText: "Add Venue",
                    contentPadding: EdgeInsets.only(left: 50.0,right: 20.0, top: 10.0, bottom: 10.0),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black87,
                  ),
                  validator: (value) {
                    if(value.isEmpty){
                      return 'Add Venue';
                    }
                    else event.venue = value;
                  },
                ),
                Divider(color: Colors.grey,),
                ListTile(
                  onTap: () { _selectedDate(context); },
                  leading: Icon(Icons.date_range,),
                  title: Container(
                      child: Text(date,style: TextStyle(fontSize: 18.0,color: Colors.grey),),
                  ),
                ),
                Divider(color: Colors.grey,),
                ListTile(
                  onTap: () { _selectedTime(context);  },
                  leading: Icon(Icons.access_time,),
                  title: Container(
                    child: Text(time,style: TextStyle(fontSize: 18.0,color: Colors.grey),),
                  ),
                ),
                Divider(color: Colors.grey,),
                Row(
                  children: <Widget>[
                    Checkbox(value: teamRequired, onChanged: trChanged, activeColor: Colors.blue),
                    Container(
                      child: Text("Team Required"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text("Team Strength : ", style: TextStyle(color: Colors.grey),),
                    ),
                    Container(
                      width: 50.0,
                      padding: EdgeInsets.only(left: 10.0),
                      child: TextFormField(
                        enabled: teamRequired,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "Min",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10.0),
                      width: 50.0,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        enabled: teamRequired,
                        decoration: InputDecoration(
                            hintText: "Max"
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(color: Colors.grey,),
                Row(
                  children: <Widget>[
                    Checkbox(value: volunteerRequired, onChanged: vrChanged, activeColor: Colors.blue),
                    Container(
                      child: Text("Volunteer Required"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text("No. of Volunteers : ", style: TextStyle(color: Colors.grey),),
                    ),
                    Container(
                      width: 70.0,
                      padding: EdgeInsets.only(left: 10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        enabled: volunteerRequired,
                        decoration: InputDecoration(
                          hintText: "Approx.",
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(color: Colors.grey,),
                Container(
                  margin: EdgeInsets.only(left: 10.0, right: 10.0),
                  padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  child:  CupertinoTextField(
                    clearButtonMode: OverlayVisibilityMode.editing,
                    maxLines: 8,
                    placeholder: "Add Description",
                    maxLength: 1000,
                    suffixMode: OverlayVisibilityMode.editing,
                    padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
