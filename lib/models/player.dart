import 'dart:convert';

class Player {
  String uuid;
  String username;
  bool online;
  String rank;
  String rankPlusColor;
  String rankFormatted;
  String prefix;
  int karma;
  int exp;
  double level;
  int achievementPoints;
  int questsCompleted;
  int totalKills;
  int totalWins;
  int totalCoins;
  String mcVersion;
  int firstLogin;
  int lastLogin;
  int lastLogout;
  String lastGame;
  String language;
  int giftsSent;
  int giftsReceived;
  bool isContributor;

  Player({
    this.uuid,
    this.username,
    this.online,
    this.rank,
    this.rankPlusColor,
    this.rankFormatted,
    this.prefix,
    this.karma,
    this.exp,
    this.level,
    this.achievementPoints,
    this.questsCompleted,
    this.totalKills,
    this.totalWins,
    this.totalCoins,
    this.mcVersion,
    this.firstLogin,
    this.lastLogin,
    this.lastLogout,
    this.lastGame,
    this.language,
    this.giftsSent,
    this.giftsReceived,
    this.isContributor,
  });

  factory Player.fromRawJson(String str) => Player.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Player.fromJson(Map<String, dynamic> json) => Player(
        uuid: json["uuid"],
        username: json["username"],
        online: json["online"],
        rank: json["rank"],
        rankPlusColor: json["rank_plus_color"],
        rankFormatted: json["rank_formatted"],
        prefix: json["prefix"],
        karma: json["karma"],
        exp: json["exp"],
        level: json["level"],
        achievementPoints: json["achievement_points"],
        questsCompleted: json["quests_completed"],
        totalKills: json["total_kills"],
        totalWins: json["total_wins"],
        totalCoins: json["total_coins"],
        mcVersion: json["mc_version"],
        firstLogin: json["first_login"],
        lastLogin: json["last_login"],
        lastLogout: json["last_logout"],
        lastGame: json["last_game"],
        language: json["language"],
        giftsSent: json["gifts_sent"],
        giftsReceived: json["gifts_received"],
        isContributor: json["is_contributor"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "username": username,
        "online": online,
        "rank": rank,
        "rank_plus_color": rankPlusColor,
        "rank_formatted": rankFormatted,
        "prefix": prefix,
        "karma": karma,
        "exp": exp,
        "level": level,
        "achievement_points": achievementPoints,
        "quests_completed": questsCompleted,
        "total_kills": totalKills,
        "total_wins": totalWins,
        "total_coins": totalCoins,
        "mc_version": mcVersion,
        "first_login": firstLogin,
        "last_login": lastLogin,
        "last_logout": lastLogout,
        "last_game": lastGame,
        "language": language,
        "gifts_sent": giftsSent,
        "gifts_received": giftsReceived,
        "is_contributor": isContributor,
      };
}
