// To parse this JSON data, do
//
//     final guild = guildFromJson(jsonString);

import 'dart:convert';

class Guild {
  String name;
  String id;
  String created;
  String tag;
  String tagColor;
  String tagFormatted;
  int legacyRanking;
  int exp;
  double level;
  int expByGame;
  ExpHistory expHistory;
  String description;
  List<String> preferredGames;
  List<Rank> ranks;
  List<Member> members;

  Guild({
    this.name,
    this.id,
    this.created,
    this.tag,
    this.tagColor,
    this.tagFormatted,
    this.legacyRanking,
    this.exp,
    this.level,
    this.expByGame,
    this.expHistory,
    this.description,
    this.preferredGames,
    this.ranks,
    this.members,
  });

  factory Guild.fromRawJson(String str) => Guild.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Guild.fromJson(Map<String, dynamic> json) => Guild(
    name: json["name"],
    id: json["id"],
    created: json["created"],
    tag: json["tag"],
    tagColor: json["tag_color"],
    tagFormatted: json["tag_formatted"],
    legacyRanking: json["legacy_ranking"],
    exp: json["exp"],
    level: json["level"],
    expByGame: json["exp_by_game"],
    expHistory: ExpHistory.fromJson(json["exp_history"]),
    description: json["description"],
    preferredGames: List<String>.from(json["preferred_games"].map((x) => x)),
    ranks: List<Rank>.from(json["ranks"].map((x) => Rank.fromJson(x))),
    members: List<Member>.from(json["members"].map((x) => Member.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "id": id,
    "created": created,
    "tag": tag,
    "tag_color": tagColor,
    "tag_formatted": tagFormatted,
    "legacy_ranking": legacyRanking,
    "exp": exp,
    "level": level,
    "exp_by_game": expByGame,
    "exp_history": expHistory.toJson(),
    "description": description,
    "preferred_games": List<dynamic>.from(preferredGames.map((x) => x)),
    "ranks": List<dynamic>.from(ranks.map((x) => x.toJson())),
    "members": List<dynamic>.from(members.map((x) => x.toJson())),
  };
}

class ExpHistory {
  ExpHistory();

  factory ExpHistory.fromRawJson(String str) => ExpHistory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ExpHistory.fromJson(Map<String, dynamic> json) => ExpHistory(
  );

  Map<String, dynamic> toJson() => {
  };
}

class Member {
  String uuid;
  String rank;
  int joined;
  int questParticipation;
  ExpHistory expHistory;
  int mutedTill;

  Member({
    this.uuid,
    this.rank,
    this.joined,
    this.questParticipation,
    this.expHistory,
    this.mutedTill,
  });

  factory Member.fromRawJson(String str) => Member.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Member.fromJson(Map<String, dynamic> json) => Member(
    uuid: json["uuid"],
    rank: json["rank"],
    joined: json["joined"],
    questParticipation: json["quest_participation"],
    expHistory: ExpHistory.fromJson(json["exp_history"]),
    mutedTill: json["muted_till"],
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid,
    "rank": rank,
    "joined": joined,
    "quest_participation": questParticipation,
    "exp_history": expHistory.toJson(),
    "muted_till": mutedTill,
  };
}

class Rank {
  String name;
  List<double> permissions;
  bool rankDefault;
  String tag;
  int created;
  int priority;

  Rank({
    this.name,
    this.permissions,
    this.rankDefault,
    this.tag,
    this.created,
    this.priority,
  });

  factory Rank.fromRawJson(String str) => Rank.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Rank.fromJson(Map<String, dynamic> json) => Rank(
    name: json["name"],
    permissions: List<double>.from(json["permissions"].map((x) => x)),
    rankDefault: json["default"],
    tag: json["tag"],
    created: json["created"],
    priority: json["priority"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "permissions": List<dynamic>.from(permissions.map((x) => x)),
    "default": rankDefault,
    "tag": tag,
    "created": created,
    "priority": priority,
  };
}
