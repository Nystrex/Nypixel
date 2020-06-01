import 'package:flutter/material.dart';
import 'package:nypixel/api/api.dart';
import 'package:nypixel/models/player.dart';
import 'package:nypixel/utils/McColor.dart';
import 'package:nypixel/widgets/header.dart';

class PlayerPage extends StatefulWidget {
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  Player player;
  bool pending = false;
  TextEditingController queryController;

  @override
  void initState() {
    super.initState();
    this.queryController = TextEditingController()..text = "";
    search("Nystrex");
  }

  Future<void> search(String playerName) async {
    this.player = null;
    setState(() => this.pending = true);
    try {
      this.player = await API.getPlayer(playerName);
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
            title: "Player Stats",
            subtitle: "Search for any player stats on Hypixel Network",
            textFieldHint: "Enter Player Name",
            onSubmit: (val) {
              search(val);
            },
            trailing: player != null
                ? Image.network(
                    'https://visage.surgeplay.com/head/512/${player.uuid}',
                    scale: 11,
                  )
                : Image.network("https://visage.surgeplay.com/head/512/X-Steve",
                    scale: 11)),
        player != null
            ? Container(
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(children: [
                      Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.black26),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Stack(
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                      style: TextStyle(fontSize: 14),
                                      children: [
                                        buildCustomText("Name", player.username),
                                        buildCustomText("UUID", player.uuid),
                                        buildCustomText(
                                            "Status",
                                            player.online
                                                ? "Online"
                                                : "Offline",
                                            true,
                                            player.online
                                                ? McColors.green
                                                : McColors.red),
                                        buildCustomRankText(player.rank),
                                        buildCustomText(
                                            "Level",
                                            player.level.toString(),
                                            false,
                                            McColors.green),
                                      ]),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.black26),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Stack(
                                  children: <Widget>[
                                    RichText(
                                      text: TextSpan(
                                          style: TextStyle(fontSize: 14),
                                          children: [
                                            buildCustomText(
                                                "Karma",
                                                player.karma.toString(),
                                                true,
                                                McColors.darkPurple),
                                            buildCustomText(
                                                "Achievement Points",
                                                player.achievementPoints
                                                    .toString()),
                                            buildCustomText(
                                                "Quests Completed",
                                                player.questsCompleted
                                                    .toString()),
                                            buildCustomText("Gifts Sent",
                                                player.giftsSent.toString()),
                                            buildCustomText(
                                                "Gifts Received",
                                                player.giftsReceived.toString(),
                                                false),
                                          ]),
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.black26),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Stack(
                                  children: <Widget>[
                                    RichText(
                                      text: TextSpan(
                                          style: TextStyle(fontSize: 14),
                                          children: [
                                            buildCustomText("Total Kills",
                                                player.totalKills.toString()),
                                            buildCustomText("Total Wins",
                                                player.totalWins.toString()),
                                            buildCustomText(
                                                "Total Coins",
                                                player.totalCoins.toString(),
                                                true,
                                                McColors.gold),
                                            buildCustomText(
                                                "MC Version", player.mcVersion),
                                            buildCustomText("Last Game",
                                                player.lastGame, false),
                                          ]),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      )
                    ])),
              )
            : Text(""),
        Container(
          height: 30,
          child: Center(
            child: Text("Made By Hadi Ka (Nystrex)",
                style: TextStyle(color: Colors.grey, fontSize: 11)),
          ),
        )
      ]),
    );
  }
}

InlineSpan buildCustomText(String type, String text,
    [bool newLine = true, Color textColor]) {
  return TextSpan(
      text: "$type - ",
      style: TextStyle(color: McColors.yellow),
      children: [
        TextSpan(
          text: '$text${newLine ? "\n" : ""}',
          style:
              TextStyle(color: textColor != null ? textColor : McColors.white),
        )
      ]);
}

InlineSpan buildCustomRankText(String rank, [bool newLine = true]) {
  return TextSpan(
      text: "Rank - ",
      style: TextStyle(color: McColors.yellow),
      children: [
        TextSpan(
            text: '$rank${newLine ? "\n" : ""}',
            style: TextStyle(
                color: rank == "VIP" || rank == "VIP_PLUS"
                    ? McColors.green
                    : rank == "MVP" || rank == "MVP_PLUS"
                        ? McColors.blue
                        : rank == "MVP_PLUS_PLUS"
                            ? McColors.gold
                            : rank == "YOUTUBER" || rank == "ADMIN"
                                ? McColors.red
                                : rank == "HELPER"
                                    ? McColors.blue
                                    : rank == "MOD"
                                        ? McColors.darkGreen
                                        : rank == "BUILD_TEAM"
                                            ? McColors.darkAqua
                                            : McColors.grey)),
      ]);
}
