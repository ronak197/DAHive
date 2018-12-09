import 'package:flutter/material.dart';
import 'glance.dart';
import 'timeline.dart';
import 'news.dart';

void main () => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primaryColor: Color(0xff00b4c1),
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{

  TabController tabController;
  final List<String> tabTitles = ["Glance", "Timeline", "News"];
  String currentTab;
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  void initState() {
    super.initState();
    currentTab = tabTitles[0];
    tabController = new TabController(
        length: 3,
        vsync: this
    );
    tabController.addListener(_handleSelected);
  }

  void _handleSelected(){
    setState(() {
      currentTab = tabTitles[tabController.index];
    });
  }

  void dispose(){
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      appBar: new AppBar(
        leading: RawMaterialButton(
          shape: CircleBorder(),
          padding: EdgeInsets.all(10.0),
          highlightColor: Colors.white,
          child: CircleAvatar(
            child: new Text("R"),
            radius: 20.0,
          ),
          onPressed: (){
            _scaffoldKey.currentState.openDrawer();
          }
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 0.0,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.event,color: Colors.lightBlue,), onPressed: null)
        ],
        title: Container(
          padding: EdgeInsets.only(top: 9.0,bottom: 9.0),
          child: new TextFormField(
            textAlign: TextAlign.justify,
            decoration: new InputDecoration(
              prefixIcon: IconButton(
                iconSize: 20.0,
                padding: EdgeInsets.all(0.0),
                icon: Icon(Icons.search,color: Colors.grey,),
                onPressed: null,
              ),
              contentPadding: EdgeInsets.all(0.0),
              filled: true,
              fillColor: Color(0xfff4f4f4),
              border: new OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(60.0)),
              ),
              hintText: "Search",
            ),
          ),
        ),
        bottom: new TabBar(
          controller: tabController,
          tabs: <Widget>[
            new Tab(
              child: new Text("Glance"),
            ),
            new Tab(
              child: new Text("Timeline"),
            ),
            new Tab(
              child: new Text("News"),
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: tabController,
        children: <Widget>[
          Glance(),
          Timeline(),
          News()
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Padding(padding: EdgeInsetsDirectional.only(top: 10.0)),
                  new CircleAvatar(
                    child: new Text("R"),
                    radius: 30.0,
                  ),
                  new Padding(padding: EdgeInsetsDirectional.only(top: 15.0)),
                  new Text("Ronak Jain", style: TextStyle(color: Colors.black87),),
                  new Padding(padding: EdgeInsetsDirectional.only(top: 5.0)),
                  new Text("201701419@daiict.ac.in",style: TextStyle(color: Colors.grey,fontSize: 11.0),),
                ],
              ),
            ),
            new ListTile(
              leading: new Icon(Icons.star_border,color: Colors.blue,),
              title: new Text("Interested", style: TextStyle(color: Colors.grey),),
              onTap: () => {},
            ),
            new ListTile(
              leading: new Icon(Icons.history,color: Colors.blue,),
              title: new Text("Past Events", style: TextStyle(color: Colors.grey),),
              onTap: () => {},
            ),
            new Divider(),
            new ListTile(
              leading: new Icon(Icons.event,color: Colors.blue,),
              title: new Text("Add/Remove Event", style: TextStyle(color: Colors.grey),),
              onTap: () => {},
            ),
            new ListTile(
              leading: new Icon(Icons.perm_identity,color: Colors.blue,),
              title: new Text("Admin Panel", style: TextStyle(color: Colors.grey),),
              onTap: () => {},
            ),
            new ListTile(
              leading: new Icon(Icons.info,color: Colors.blue,),
              title: new Text("About Us", style: TextStyle(color: Colors.grey),),
              onTap: () => {},
            ),
          ],
        ),
      ),
    );
  }
}