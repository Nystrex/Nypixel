import 'package:flutter/material.dart';
import 'package:nypixel/api/api.dart';
import 'package:nypixel/models/guild.dart';
import 'package:nypixel/widgets/header.dart';

class GuildPage extends StatefulWidget {
  @override
  _GuildPageState createState() => _GuildPageState();
}

class _GuildPageState extends State<GuildPage> {
  Guild guild;
  bool pending = false;
  TextEditingController queryController;

  @override
  void initState() {
    super.initState();
    this.queryController = TextEditingController()..text = "";
  }

  Future<void> search(BuildContext context, String playerName) async {
    setState(() => this.pending = true);
    try {
      this.guild = await API.getGuild(playerName);
    } catch (e) {
      print(e);
    }
    setState(() => this.pending = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      HeaderWidget(
          title: "Guild Stats",
          subtitle: "Search for guild stats on Hypixel Network",
          textFieldHint: "Enter Player Name",
          onSubmit: (val) {
            search(context, val);
          }),
      if (guild != null)
        Container(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.black26),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text(guild?.name ?? "")],
                ),
              )),
        )),
      Container(
        height: 30,
        child: Center(
          child: Text("Made By Hadi Ka (Nystrex)",
              style: TextStyle(color: Colors.grey, fontSize: 11)),
        ),
      )
    ]));
  }
}
