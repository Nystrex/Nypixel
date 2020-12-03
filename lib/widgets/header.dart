import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String textFieldHint;
  final Function onSubmit;
  final Widget trailing;
  final Function profile;
  final String username;

  HeaderWidget(
      {this.title,
      this.subtitle,
      this.textFieldHint,
      this.onSubmit,
      this.trailing,
      this.profile,
      this.username});

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            height: 250.0,
            width: double.infinity,
            color: Colors.red.shade400,
          ),
          Positioned(
            bottom: 50.0,
            right: 100.0,
            child: Container(
              height: 400.0,
              width: 400.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200.0),
                  color: Colors.red.shade600.withOpacity(0.4)),
            ),
          ),
          Positioned(
            bottom: 100.0,
            left: 150.0,
            child: Container(
                height: 300.0,
                width: 300.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150.0),
                    color: Colors.red.shade600.withOpacity(0.5))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 15.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 15),
                  Container(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        Fluttertoast.showToast(msg: "Coming Soon!");
                      },
                      color: Colors.white,
                      iconSize: 30.0,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  SizedBox(width: MediaQuery.of(context).size.width - 125.0),
                  Container(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.person_sharp),
                      onPressed: profile,
                      tooltip: "Profile",
                      color: Colors.white,
                      iconSize: 30.0,
                    ),
                  ),
                  SizedBox(height: 15.0),
                ],
              ),
              SizedBox(height: 50.0),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Nypixel - $title',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  subtitle,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 43.0),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Material(
                  elevation: 8.0,
                  borderRadius: BorderRadius.circular(5.0),
                  child: Stack(
                      alignment: Alignment.centerRight,
                      children: <Widget>[
                        TextField(
                            controller: myController,
                            onSubmitted: onSubmit,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search,
                                    color: Colors.red.shade400, size: 30.0),
                                contentPadding:
                                    EdgeInsets.only(left: 15.0, top: 15.0),
                                hintText: textFieldHint,
                                hintStyle: TextStyle(color: Colors.grey))),
                        IconButton(
                          tooltip: "Click to Save as Default User",
                          icon: trailing,
                          onPressed: () {
                            _save(username);
                            Fluttertoast.showToast(
                                msg: "Default user set to $username");
                          },
                        ),
                      ]),
                ),
              ),
              SizedBox(height: 15.0)
            ],
          )
        ],
      ),
    ]);
  }
}

_save(String user) async {
  final prefs = await SharedPreferences.getInstance();
  final key = 'default_user';
  prefs.setString(key, user.isEmpty ? "Nystrex" : user);
}
