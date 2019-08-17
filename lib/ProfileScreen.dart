import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _lights = true;
  bool _lights1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212B4B),
      appBar: AppBar(
        titleSpacing: 20.0,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF212B4B),
        title: Text("Profile & Settings"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.payment), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            alignment: Alignment.center,
            child: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(
                  "https://avatars3.githubusercontent.com/u/25903939?s=400&v=4"),
              radius: 60.0,
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  "Shivam Goyal",
                  style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 2.0),
                Text(
                  "hi@shivamgoyal.co",
                  style: TextStyle(fontSize: 16.0, color: Color(0xFFAABAF4)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          ListTile(
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
            title: Text(
              "Night Mode",
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            trailing: CupertinoSwitch(
              value: _lights,
              onChanged: (bool value) {
                setState(() {
                  _lights = value;
                });
              },
            ),
            onTap: () {
              setState(() {
                _lights = !_lights;
              });
            },
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Divider(
              height: 0.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.symmetric(horizontal: 25.0),
          ),
          ListTile(
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
            title: Text(
              "Pass Code Lock",
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            trailing: CupertinoSwitch(
              value: _lights1,
              onChanged: (bool value) {
                setState(() {
                  _lights1 = value;
                });
              },
            ),
            onTap: () {
              setState(() {
                _lights1 = !_lights1;
              });
            },
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Divider(
              height: 0.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.symmetric(horizontal: 25.0),
          ),
          ListTile(
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
            title: Text(
              "Language",
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "English",
                  style: TextStyle(fontSize: 16.0, color: Color(0xFFAABAF4)),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 16.0,
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Divider(
              height: 0.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.symmetric(horizontal: 25.0),
          ),
          ListTile(
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
            title: Text(
              "Base Currency",
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "USD",
                  style: TextStyle(fontSize: 16.0, color: Color(0xFFAABAF4)),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 16.0,
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Divider(
              height: 0.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.symmetric(horizontal: 25.0),
          ),
          ListTile(
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
            title: Text(
              "Data Recovery & Transfer",
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 16.0,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50.0,
        alignment: Alignment.center,
        child: BottomAppBar(
          color: Color(0xFF212B4B),
          elevation: 0.0,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.account_balance_wallet,
                      color: Color(0xFFAABAF4)),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.insert_chart, color: Color(0xFFAABAF4)),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.notifications, color: Color(0xFFAABAF4)),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.settings, color: Colors.white),
                  onPressed: () {},
                ),
              ]),
        ),
      ),
    );
  }
}
