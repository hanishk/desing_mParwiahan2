import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget myList(String imageVal, String text) {
    return Container(
      width: 170.0,
      child: Column(
        children: <Widget>[
          Card(
            elevation: 0.0,
            child: Image.asset(
              imageVal,
              colorBlendMode: BlendMode.multiply,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0),
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
          ),
        ],
      ),
    );
  }

  Widget rcInfo(IconData icon, String text) {
    return Container(
      width: 100.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Wrap(
            children: <Widget>[
              Card(
                color: Colors.transparent,
                elevation: 0.0,
                child: Icon(
                  icon,
                  color: Colors.blue,
                  size: 40.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                text,
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(fontSize: 14.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget flatbuttons(String text, IconData icon, Function fun) {
    return FlatButton.icon(
        onPressed: fun,
        icon: Icon(
          icon,
          size: 8.0,
        ),
        label: Text(
          text,
          style: TextStyle(fontSize: 8.0),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'mPariwahan',
              style: TextStyle(fontSize: 20.0),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 3.0)),
            Text(
              'A step to virtualization',
              style: TextStyle(fontSize: 10.0),
            )
          ],
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              "assets/images/ambulance.png",
//              fit: BoxFit.cover,
              color: Colors.white,
            ),
          ),
//          IconButton(icon: Icon(Icons.directions_bus), onPressed: () {}),
          IconButton(
              icon: Icon(IconData(0xe900, fontFamily: 'notification')),
              onPressed: () {}),
        ],
        leading: IconButton(
            icon: Icon(Icons.short_text),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
        bottom: PreferredSize(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 20.0,
                      child: Row(
                        children: <Widget>[
                          flatbuttons('RC', Icons.calendar_today, () {}),
                          VerticalDivider(
                            color: Colors.black54,
                          ),
                          flatbuttons('DL', Icons.calendar_today, () {}),
                          VerticalDivider(
                            color: Colors.black54,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(fontSize: 10.0),
                            hintText: 'Enter vehicle number to get details'),
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      child: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {},
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            preferredSize: Size.fromHeight(60.0)),
      ),
      drawer: Drawer(),
      key: _scaffoldKey,
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 160.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.jpg'),
                        fit: BoxFit.cover)

//                    gradient: LinearGradient(
//                        begin: Alignment.bottomLeft,
//                        end: Alignment.bottomRight,
//                        colors: [Colors.teal[800], Colors.teal[100]])
                    ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                    ),
                    Text(
                      'mParivahan',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 10.0)),
                        Icon(
                          Icons.calendar_today,
                          size: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.0),
                        ),
                        Text(
                          "Get RC/DC Details | ",
                          style: TextStyle(fontSize: 10.0),
                        ),
                        Icon(
                          Icons.calendar_today,
                          size: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.0),
                        ),
                        Text(
                          "Get RC/DC Details",
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 32.0),
                      child: RaisedButton(
                        elevation: 2.0,
                        onPressed: () {},
                        color: Colors.blue,
                        child: Text(
                          "Share Now",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "mParivahan Services",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            ),
          ),
          Container(
              height: 140.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  myList('assets/images/dlmock.jpg', "DL Mock Test"),
                  myList('assets/images/computer.png', "Tax Receipt"),
                  myList('assets/images/citizen.png', "Traffic Status"),
                  myList('assets/images/citizen.png', "Citizen Report"),
                  myList('assets/images/computer.png', "Nearest RTO"),
                ],
              )),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "RC Info"
                  "rmation",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            ),
          ),
          Container(
              height: 120.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  rcInfo(IconData(0xe900, fontFamily: 'hotel'),
                      "Temporary Registration"),
                  rcInfo(Icons.info, "Permanent Registration"),
                  rcInfo(Icons.short_text, "Renewal Of Registration"),
                  rcInfo(Icons.zoom_out_map, "Duplicate   RC"),
                  rcInfo(Icons.directions_bus, "No Objection Certificate"),
                  rcInfo(Icons.directions, "HPEndorsement"),
                  rcInfo(Icons.directions_bus, "HP Termination"),
                  rcInfo(Icons.directions_bus, "Address Change"),
                  rcInfo(Icons.directions_bus, "Reassign-ment"),
                  rcInfo(Icons.directions_bus, "Certificate Issues"),
                ],
              )),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "DL Information",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            ),
          ),
          Container(
              height: 140.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  rcInfo(Icons.calendar_today, "Learner's   DL"),
                  rcInfo(Icons.info, "Permanent DL"),
                  rcInfo(Icons.short_text, "Renewable Of DL"),
                  rcInfo(Icons.zoom_out_map, "Duplicate  DL"),
                  rcInfo(Icons.directions_bus, "Addition Of Class"),
                  rcInfo(Icons.directions_bus, "Internation Driving"),
                  rcInfo(Icons.directions_bus, "License   Fees"),
                ],
              )),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "How  to use",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 18.0),
            height: 140.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                myList("assets/images/pixels.jpeg", "Why mParivahan"),
                myList("assets/images/pixels.jpeg", "How To Use"),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            height: 100.0,
            child: Image.asset(
              'assets/images/pixels.jpeg',
              fit: BoxFit.fitWidth,
            ),
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
