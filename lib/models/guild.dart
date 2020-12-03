import 'dart:convert';

Guild guildFromJson(String str) => Guild.fromJson(json.decode(str));

String guildToJson(Guild data) => json.encode(data.toJson());

class Guild {
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

  String name;
  String id;
  String created;
  String tag;
  String tagColor;
  String tagFormatted;
  dynamic legacyRanking;
  dynamic exp;
  dynamic level;
  dynamic expByGame;
  ExpHistory expHistory;
  String description;
  List<String> preferredGames;
  List<Rank> ranks;
  List<Member> members;

  factory Guild.fromJson(Map<String, dynamic> json) => Guild(
    name: json["name"] == null ? null : json["name"],
    id: json["id"] == null ? null : json["id"],
    created: json["created"] == null ? null : json["created"],
    tag: json["tag"] == null ? null : json["tag"],
    tagColor: json["tag_color"] == null ? null : json["tag_color"],
    tagFormatted: json["tag_formatted"] == null ? null : json["tag_formatted"],
    legacyRanking: json["legacy_ranking"] == null ? null : json["legacy_ranking"],
    exp: json["exp"] == null ? null : json["exp"],
    level: json["level"] == null ? null : json["level"],
    expByGame: json["exp_by_game"] == null ? null : json["exp_by_game"],
    expHistory: json["exp_history"] == null ? null : ExpHistory.fromJson(json["exp_history"]),
    description: json["description"] == null ? null : json["description"],
    preferredGames: json["preferred_games"] == null ? null : List<String>.from(json["preferred_games"].map((x) => x)),
    ranks: json["ranks"] == null ? null : List<Rank>.from(json["ranks"].map((x) => Rank.fromJson(x))),
    members: json["members"] == null ? null : List<Member>.from(json["members"].map((x) => Member.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "id": id == null ? null : id,
    "created": created == null ? null : created,
    "tag": tag == null ? null : tag,
    "tag_color": tagColor == null ? null : tagColor,
    "tag_formatted": tagFormatted == null ? null : tagFormatted,
    "legacy_ranking": legacyRanking == null ? null : legacyRanking,
    "exp": exp == null ? null : exp,
    "level": level == null ? null : level,
    "exp_by_game": expByGame == null ? null : expByGame,
    "exp_history": expHistory == null ? null : expHistory.toJson(),
    "description": description == null ? null : description,
    "preferred_games": preferredGames == null ? null : List<dynamic>.from(preferredGames.map((x) => x)),
    "ranks": ranks == null ? null : List<dynamic>.from(ranks.map((x) => x.toJson())),
    "members": members == null ? null : List<dynamic>.from(members.map((x) => x.toJson())),
  };
}

class ExpHistory {
  ExpHistory();

  factory ExpHistory.fromJson(Map<String, dynamic> json) => ExpHistory(
  );

  Map<String, dynamic> toJson() => {
  };
}

class Member {
  Member({
    this.uuid,
    this.rank,
    this.joined,
    this.questParticipation,
    this.expHistory,
    this.mutedTill,
  });

  String uuid;
  String rank;
  dynamic joined;
  dynamic questParticipation;
  ExpHistory expHistory;
  dynamic mutedTill;

  factory Member.fromJson(Map<String, dynamic> json) => Member(
    uuid: json["uuid"] == null ? null : json["uuid"],
    rank: json["rank"] == null ? null : json["rank"],
    joined: json["joined"] == null ? null : json["joined"],
    questParticipation: json["quest_participation"] == null ? null : json["quest_participation"],
    expHistory: json["exp_history"] == null ? null : ExpHistory.fromJson(json["exp_history"]),
    mutedTill: json["muted_till"] == null ? null : json["muted_till"],
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid == null ? null : uuid,
    "rank": rank == null ? null : rank,
    "joined": joined == null ? null : joined,
    "quest_participation": questParticipation == null ? null : questParticipation,
    "exp_history": expHistory == null ? null : expHistory.toJson(),
    "muted_till": mutedTill == null ? null : mutedTill,
  };
}

class Rank {
  Rank({
    this.name,
    this.permissions,
    this.rankDefault,
    this.tag,
    this.created,
    this.priority,
  });

  String name;
  List<int> permissions;
  bool rankDefault;
  String tag;
  dynamic created;
  dynamic priority;

  factory Rank.fromJson(Map<String, dynamic> json) => Rank(
    name: json["name"] == null ? null : json["name"],
    permissions: json["permissions"] == null ? null : List<int>.from(json["permissions"].map((x) => x)),
    rankDefault: json["default"] == null ? null : json["default"],
    tag: json["tag"] == null ? null : json["tag"],
    created: json["created"] == null ? null : json["created"],
    priority: json["priority"] == null ? null : json["priority"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "permissions": permissions == null ? null : List<dynamic>.from(permissions.map((x) => x)),
    "default": rankDefault == null ? null : rankDefault,
    "tag": tag == null ? null : tag,
    "created": created == null ? null : created,
    "priority": priority == null ? null : priority,
  };
}
