import 'package:flutter/material.dart';
import 'package:nypixel/api/api.dart';
import 'package:nypixel/models/player.dart';
import 'package:nypixel/utils/HexColor.dart';
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
                                        CustomText("Name", player.username),
                                        CustomText("UUID", player.uuid),
                                        CustomText(
                                            "Status",
                                            player.online
                                                ? "Online"
                                                : "Offline",
                                            true,
                                            player.online
                                                ? McColors.green
                                                : McColors.red),
                                        CustomRankText(player.rank),
                                        CustomText(
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
                                            CustomText(
                                                "Karma",
                                                player.karma.toString(),
                                                true,
                                                McColors.darkPurple),
                                            CustomText(
                                                "Achievement Points",
                                                player.achievementPoints
                                                    .toString()),
                                            CustomText("Quests Completed",
                                                player.questsCompleted.toString()),
                                            CustomText("Gifts Sent",
                                                player.giftsSent.toString()),
                                            CustomText(
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
                                            CustomText("Total Kills",
                                                player.totalKills.toString()),
                                            CustomText("Total Wins",
                                                player.totalWins.toString()),
                                            CustomText(
                                                "Total Coins",
                                                player.totalCoins.toString(),
                                                true,
                                                McColors.gold),
                                            CustomText(
                                                "MC Version", player.mcVersion),
                                            CustomText(
                                                "Last Game", player.lastGame, false),
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

InlineSpan CustomText(String type, String text,
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

InlineSpan CustomRankText(String rank, [bool newLine = true]) {
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
