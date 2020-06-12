import 'package:flutter/material.dart';
import 'pages/player_page.dart';
import 'pages/guild_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Main(),
        theme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.red,
            primaryColorDark: Colors.red.shade400,
            accentColor: Colors.redAccent,
            textSelectionHandleColor: Colors.redAccent,
            toggleableActiveColor: Colors.redAccent),
        routes: {
          '/player': (context) => PlayerPage(),
          '/guild': (context) => GuildPage()
        });
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int _currentIndex = 0;
  final List<Widget> _children = [PlayerPage(), GuildPage()];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: PlayerPage(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              //_currentIndex = index;
              if(index == 1) {
                Fluttertoast.showToast(msg: "Coming Soon!");
              }
            });
          },
          currentIndex: _currentIndex,
          items: [
            new BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Player'),
            ),
            new BottomNavigationBarItem(
                icon: Icon(Icons.group), title: Text('Guild'))
          ],
        ));
  }
}
