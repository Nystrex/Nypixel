// To parse this JSON data, do
//
//     final player = playerFromJson(jsonString);

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
  int level;
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
  Rewards rewards;
  Voting voting;
  Links links;
  Stats stats;

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
    this.rewards,
    this.voting,
    this.links,
    this.stats,
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
    rewards: Rewards.fromJson(json["rewards"]),
    voting: Voting.fromJson(json["voting"]),
    links: Links.fromJson(json["links"]),
    stats: Stats.fromJson(json["stats"]),
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
    "rewards": rewards.toJson(),
    "voting": voting.toJson(),
    "links": links.toJson(),
    "stats": stats.toJson(),
  };
}

class Links {
  String twitter;
  String youtube;
  String instagram;
  String twitch;
  String mixer;
  String discord;
  String hypixel;

  Links({
    this.twitter,
    this.youtube,
    this.instagram,
    this.twitch,
    this.mixer,
    this.discord,
    this.hypixel,
  });

  factory Links.fromRawJson(String str) => Links.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    twitter: json["TWITTER"],
    youtube: json["YOUTUBE"],
    instagram: json["INSTAGRAM"],
    twitch: json["TWITCH"],
    mixer: json["MIXER"],
    discord: json["DISCORD"],
    hypixel: json["HYPIXEL"],
  );

  Map<String, dynamic> toJson() => {
    "TWITTER": twitter,
    "YOUTUBE": youtube,
    "INSTAGRAM": instagram,
    "TWITCH": twitch,
    "MIXER": mixer,
    "DISCORD": discord,
    "HYPIXEL": hypixel,
  };
}

class Rewards {
  int streakCurrent;
  int streakBest;
  int claimed;
  int claimedDaily;
  int tokens;

  Rewards({
    this.streakCurrent,
    this.streakBest,
    this.claimed,
    this.claimedDaily,
    this.tokens,
  });

  factory Rewards.fromRawJson(String str) => Rewards.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Rewards.fromJson(Map<String, dynamic> json) => Rewards(
    streakCurrent: json["streak_current"],
    streakBest: json["streak_best"],
    claimed: json["claimed"],
    claimedDaily: json["claimed_daily"],
    tokens: json["tokens"],
  );

  Map<String, dynamic> toJson() => {
    "streak_current": streakCurrent,
    "streak_best": streakBest,
    "claimed": claimed,
    "claimed_daily": claimedDaily,
    "tokens": tokens,
  };
}

class Stats {
  Arcade arcade;
  Arena arena;
  Duels warlords;
  BedWars bedWars;
  BuildBattle buildBattle;
  Duels duels;
  Tkr tkr;
  Blitz blitz;
  CvC cvC;
  Duels murderMystery;
  Pit pit;

  Stats({
    this.arcade,
    this.arena,
    this.warlords,
    this.bedWars,
    this.buildBattle,
    this.duels,
    this.tkr,
    this.blitz,
    this.cvC,
    this.murderMystery,
    this.pit,
  });

  factory Stats.fromRawJson(String str) => Stats.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Stats.fromJson(Map<String, dynamic> json) => Stats(
    arcade: Arcade.fromJson(json["Arcade"]),
    arena: Arena.fromJson(json["Arena"]),
    warlords: Duels.fromJson(json["Warlords"]),
    bedWars: BedWars.fromJson(json["BedWars"]),
    buildBattle: BuildBattle.fromJson(json["BuildBattle"]),
    duels: Duels.fromJson(json["Duels"]),
    tkr: Tkr.fromJson(json["TKR"]),
    blitz: Blitz.fromJson(json["Blitz"]),
    cvC: CvC.fromJson(json["CvC"]),
    murderMystery: Duels.fromJson(json["MurderMystery"]),
    pit: Pit.fromJson(json["Pit"]),
  );

  Map<String, dynamic> toJson() => {
    "Arcade": arcade.toJson(),
    "Arena": arena.toJson(),
    "Warlords": warlords.toJson(),
    "BedWars": bedWars.toJson(),
    "BuildBattle": buildBattle.toJson(),
    "Duels": duels.toJson(),
    "TKR": tkr.toJson(),
    "Blitz": blitz.toJson(),
    "CvC": cvC.toJson(),
    "MurderMystery": murderMystery.toJson(),
    "Pit": pit.toJson(),
  };
}

class Arcade {
  int coins;
  BlockingDead blockingDead;
  Dragonwars dragonwars;
  Says hypixelSays;
  Says santaSays;
  Miniwalls miniwalls;
  PartyGames partyGames;
  BountyHunters bountyHunters;
  GalaxyWars galaxyWars;
  FarmHunt farmHunt;
  Football football;
  CreeperAttack creeperAttack;
  HoleInTheWall holeInTheWall;
  Zombies zombies;

  Arcade({
    this.coins,
    this.blockingDead,
    this.dragonwars,
    this.hypixelSays,
    this.santaSays,
    this.miniwalls,
    this.partyGames,
    this.bountyHunters,
    this.galaxyWars,
    this.farmHunt,
    this.football,
    this.creeperAttack,
    this.holeInTheWall,
    this.zombies,
  });

  factory Arcade.fromRawJson(String str) => Arcade.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Arcade.fromJson(Map<String, dynamic> json) => Arcade(
    coins: json["coins"],
    blockingDead: BlockingDead.fromJson(json["blocking_dead"]),
    dragonwars: Dragonwars.fromJson(json["dragonwars"]),
    hypixelSays: Says.fromJson(json["hypixel_says"]),
    santaSays: Says.fromJson(json["santa_says"]),
    miniwalls: Miniwalls.fromJson(json["miniwalls"]),
    partyGames: PartyGames.fromJson(json["party_games"]),
    bountyHunters: BountyHunters.fromJson(json["bounty_hunters"]),
    galaxyWars: GalaxyWars.fromJson(json["galaxy_wars"]),
    farmHunt: FarmHunt.fromJson(json["farm_hunt"]),
    football: Football.fromJson(json["football"]),
    creeperAttack: CreeperAttack.fromJson(json["creeper_attack"]),
    holeInTheWall: HoleInTheWall.fromJson(json["hole_in_the_wall"]),
    zombies: Zombies.fromJson(json["zombies"]),
  );

  Map<String, dynamic> toJson() => {
    "coins": coins,
    "blocking_dead": blockingDead.toJson(),
    "dragonwars": dragonwars.toJson(),
    "hypixel_says": hypixelSays.toJson(),
    "santa_says": santaSays.toJson(),
    "miniwalls": miniwalls.toJson(),
    "party_games": partyGames.toJson(),
    "bounty_hunters": bountyHunters.toJson(),
    "galaxy_wars": galaxyWars.toJson(),
    "farm_hunt": farmHunt.toJson(),
    "football": football.toJson(),
    "creeper_attack": creeperAttack.toJson(),
    "hole_in_the_wall": holeInTheWall.toJson(),
    "zombies": zombies.toJson(),
  };
}

class BlockingDead {
  int wins;
  int zombieKills;
  int headshots;

  BlockingDead({
    this.wins,
    this.zombieKills,
    this.headshots,
  });

  factory BlockingDead.fromRawJson(String str) => BlockingDead.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BlockingDead.fromJson(Map<String, dynamic> json) => BlockingDead(
    wins: json["wins"],
    zombieKills: json["zombie_kills"],
    headshots: json["headshots"],
  );

  Map<String, dynamic> toJson() => {
    "wins": wins,
    "zombie_kills": zombieKills,
    "headshots": headshots,
  };
}

class BountyHunters {
  int wins;
  int kills;
  int deaths;
  int bountyKills;

  BountyHunters({
    this.wins,
    this.kills,
    this.deaths,
    this.bountyKills,
  });

  factory BountyHunters.fromRawJson(String str) => BountyHunters.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BountyHunters.fromJson(Map<String, dynamic> json) => BountyHunters(
    wins: json["wins"],
    kills: json["kills"],
    deaths: json["deaths"],
    bountyKills: json["bounty_kills"],
  );

  Map<String, dynamic> toJson() => {
    "wins": wins,
    "kills": kills,
    "deaths": deaths,
    "bounty_kills": bountyKills,
  };
}

class CreeperAttack {
  int bestWave;

  CreeperAttack({
    this.bestWave,
  });

  factory CreeperAttack.fromRawJson(String str) => CreeperAttack.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreeperAttack.fromJson(Map<String, dynamic> json) => CreeperAttack(
    bestWave: json["best_wave"],
  );

  Map<String, dynamic> toJson() => {
    "best_wave": bestWave,
  };
}

class Dragonwars {
  int wins;
  int kills;

  Dragonwars({
    this.wins,
    this.kills,
  });

  factory Dragonwars.fromRawJson(String str) => Dragonwars.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Dragonwars.fromJson(Map<String, dynamic> json) => Dragonwars(
    wins: json["wins"],
    kills: json["kills"],
  );

  Map<String, dynamic> toJson() => {
    "wins": wins,
    "kills": kills,
  };
}

class FarmHunt {
  int wins;
  int poopCollected;

  FarmHunt({
    this.wins,
    this.poopCollected,
  });

  factory FarmHunt.fromRawJson(String str) => FarmHunt.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FarmHunt.fromJson(Map<String, dynamic> json) => FarmHunt(
    wins: json["wins"],
    poopCollected: json["poop_collected"],
  );

  Map<String, dynamic> toJson() => {
    "wins": wins,
    "poop_collected": poopCollected,
  };
}

class Football {
  int wins;
  int goals;
  int powerkicks;

  Football({
    this.wins,
    this.goals,
    this.powerkicks,
  });

  factory Football.fromRawJson(String str) => Football.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Football.fromJson(Map<String, dynamic> json) => Football(
    wins: json["wins"],
    goals: json["goals"],
    powerkicks: json["powerkicks"],
  );

  Map<String, dynamic> toJson() => {
    "wins": wins,
    "goals": goals,
    "powerkicks": powerkicks,
  };
}

class GalaxyWars {
  int wins;
  int kills;
  int deaths;
  int rebelKills;
  int shotsFired;

  GalaxyWars({
    this.wins,
    this.kills,
    this.deaths,
    this.rebelKills,
    this.shotsFired,
  });

  factory GalaxyWars.fromRawJson(String str) => GalaxyWars.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GalaxyWars.fromJson(Map<String, dynamic> json) => GalaxyWars(
    wins: json["wins"],
    kills: json["kills"],
    deaths: json["deaths"],
    rebelKills: json["rebel_kills"],
    shotsFired: json["shots_fired"],
  );

  Map<String, dynamic> toJson() => {
    "wins": wins,
    "kills": kills,
    "deaths": deaths,
    "rebel_kills": rebelKills,
    "shots_fired": shotsFired,
  };
}

class HoleInTheWall {
  int wins;
  int rounds;
  int highestScoreQualification;
  int highestScoreFinals;

  HoleInTheWall({
    this.wins,
    this.rounds,
    this.highestScoreQualification,
    this.highestScoreFinals,
  });

  factory HoleInTheWall.fromRawJson(String str) => HoleInTheWall.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HoleInTheWall.fromJson(Map<String, dynamic> json) => HoleInTheWall(
    wins: json["wins"],
    rounds: json["rounds"],
    highestScoreQualification: json["highest_score_qualification"],
    highestScoreFinals: json["highest_score_finals"],
  );

  Map<String, dynamic> toJson() => {
    "wins": wins,
    "rounds": rounds,
    "highest_score_qualification": highestScoreQualification,
    "highest_score_finals": highestScoreFinals,
  };
}

class Says {
  int wins;
  int rounds;

  Says({
    this.wins,
    this.rounds,
  });

  factory Says.fromRawJson(String str) => Says.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Says.fromJson(Map<String, dynamic> json) => Says(
    wins: json["wins"],
    rounds: json["rounds"],
  );

  Map<String, dynamic> toJson() => {
    "wins": wins,
    "rounds": rounds,
  };
}

class Miniwalls {
  int wins;
  int kills;
  int deaths;
  int finalKills;
  int arrowsShot;
  int arrowsHit;
  double witherDamage;
  int witherKills;
  String kit;

  Miniwalls({
    this.wins,
    this.kills,
    this.deaths,
    this.finalKills,
    this.arrowsShot,
    this.arrowsHit,
    this.witherDamage,
    this.witherKills,
    this.kit,
  });

  factory Miniwalls.fromRawJson(String str) => Miniwalls.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Miniwalls.fromJson(Map<String, dynamic> json) => Miniwalls(
    wins: json["wins"],
    kills: json["kills"],
    deaths: json["deaths"],
    finalKills: json["final_kills"],
    arrowsShot: json["arrows_shot"],
    arrowsHit: json["arrows_hit"],
    witherDamage: json["wither_damage"],
    witherKills: json["wither_kills"],
    kit: json["kit"],
  );

  Map<String, dynamic> toJson() => {
    "wins": wins,
    "kills": kills,
    "deaths": deaths,
    "final_kills": finalKills,
    "arrows_shot": arrowsShot,
    "arrows_hit": arrowsHit,
    "wither_damage": witherDamage,
    "wither_kills": witherKills,
    "kit": kit,
  };
}

class PartyGames {
  int wins1;
  int wins2;
  int wins3;

  PartyGames({
    this.wins1,
    this.wins2,
    this.wins3,
  });

  factory PartyGames.fromRawJson(String str) => PartyGames.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PartyGames.fromJson(Map<String, dynamic> json) => PartyGames(
    wins1: json["wins_1"],
    wins2: json["wins_2"],
    wins3: json["wins_3"],
  );

  Map<String, dynamic> toJson() => {
    "wins_1": wins1,
    "wins_2": wins2,
    "wins_3": wins3,
  };
}

class Zombies {
  int wins;
  int zombieKills;
  int deaths;
  int totalRoundsSurvived;
  int bulletsHit;
  int headshots;
  int playersRevived;
  int windowsRepaired;
  int doorsOpened;
  int bestRound;

  Zombies({
    this.wins,
    this.zombieKills,
    this.deaths,
    this.totalRoundsSurvived,
    this.bulletsHit,
    this.headshots,
    this.playersRevived,
    this.windowsRepaired,
    this.doorsOpened,
    this.bestRound,
  });

  factory Zombies.fromRawJson(String str) => Zombies.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Zombies.fromJson(Map<String, dynamic> json) => Zombies(
    wins: json["wins"],
    zombieKills: json["zombie_kills"],
    deaths: json["deaths"],
    totalRoundsSurvived: json["total_rounds_survived"],
    bulletsHit: json["bullets_hit"],
    headshots: json["headshots"],
    playersRevived: json["players_revived"],
    windowsRepaired: json["windows_repaired"],
    doorsOpened: json["doors_opened"],
    bestRound: json["best_round"],
  );

  Map<String, dynamic> toJson() => {
    "wins": wins,
    "zombie_kills": zombieKills,
    "deaths": deaths,
    "total_rounds_survived": totalRoundsSurvived,
    "bullets_hit": bulletsHit,
    "headshots": headshots,
    "players_revived": playersRevived,
    "windows_repaired": windowsRepaired,
    "doors_opened": doorsOpened,
    "best_round": bestRound,
  };
}

class Arena {
  int coins;
  int coinsSpent;
  String hat;
  int penalty;
  int magicalChest;
  int keys;
  String selectedSword;
  String activeRune;
  Skills skills;
  CombatLevels combatLevels;
  RuneLevels runeLevels;
  ArenaGamemodes gamemodes;

  Arena({
    this.coins,
    this.coinsSpent,
    this.hat,
    this.penalty,
    this.magicalChest,
    this.keys,
    this.selectedSword,
    this.activeRune,
    this.skills,
    this.combatLevels,
    this.runeLevels,
    this.gamemodes,
  });

  factory Arena.fromRawJson(String str) => Arena.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Arena.fromJson(Map<String, dynamic> json) => Arena(
    coins: json["coins"],
    coinsSpent: json["coins_spent"],
    hat: json["hat"],
    penalty: json["penalty"],
    magicalChest: json["magical_chest"],
    keys: json["keys"],
    selectedSword: json["selected_sword"],
    activeRune: json["active_rune"],
    skills: Skills.fromJson(json["skills"]),
    combatLevels: CombatLevels.fromJson(json["combat_levels"]),
    runeLevels: RuneLevels.fromJson(json["rune_levels"]),
    gamemodes: ArenaGamemodes.fromJson(json["gamemodes"]),
  );

  Map<String, dynamic> toJson() => {
    "coins": coins,
    "coins_spent": coinsSpent,
    "hat": hat,
    "penalty": penalty,
    "magical_chest": magicalChest,
    "keys": keys,
    "selected_sword": selectedSword,
    "active_rune": activeRune,
    "skills": skills.toJson(),
    "combat_levels": combatLevels.toJson(),
    "rune_levels": runeLevels.toJson(),
    "gamemodes": gamemodes.toJson(),
  };
}

class CombatLevels {
  int melee;
  int health;
  int energy;
  int cooldown;

  CombatLevels({
    this.melee,
    this.health,
    this.energy,
    this.cooldown,
  });

  factory CombatLevels.fromRawJson(String str) => CombatLevels.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CombatLevels.fromJson(Map<String, dynamic> json) => CombatLevels(
    melee: json["melee"],
    health: json["health"],
    energy: json["energy"],
    cooldown: json["cooldown"],
  );

  Map<String, dynamic> toJson() => {
    "melee": melee,
    "health": health,
    "energy": energy,
    "cooldown": cooldown,
  };
}

class ArenaGamemodes {
  FourVFour oneVOne;
  FourVFour twoVTwo;
  FourVFour fourVFour;

  ArenaGamemodes({
    this.oneVOne,
    this.twoVTwo,
    this.fourVFour,
  });

  factory ArenaGamemodes.fromRawJson(String str) => ArenaGamemodes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ArenaGamemodes.fromJson(Map<String, dynamic> json) => ArenaGamemodes(
    oneVOne: FourVFour.fromJson(json["one_v_one"]),
    twoVTwo: FourVFour.fromJson(json["two_v_two"]),
    fourVFour: FourVFour.fromJson(json["four_v_four"]),
  );

  Map<String, dynamic> toJson() => {
    "one_v_one": oneVOne.toJson(),
    "two_v_two": twoVTwo.toJson(),
    "four_v_four": fourVFour.toJson(),
  };
}

class FourVFour {
  int damage;
  int kills;
  int deaths;
  int losses;
  int wins;
  int winStreaks;
  int games;
  int healed;
  double kd;
  double winLoss;
  double winPercentage;

  FourVFour({
    this.damage,
    this.kills,
    this.deaths,
    this.losses,
    this.wins,
    this.winStreaks,
    this.games,
    this.healed,
    this.kd,
    this.winLoss,
    this.winPercentage,
  });

  factory FourVFour.fromRawJson(String str) => FourVFour.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FourVFour.fromJson(Map<String, dynamic> json) => FourVFour(
    damage: json["damage"],
    kills: json["kills"],
    deaths: json["deaths"],
    losses: json["losses"],
    wins: json["wins"],
    winStreaks: json["win_streaks"],
    games: json["games"],
    healed: json["healed"],
    kd: json["kd"],
    winLoss: json["win_loss"],
    winPercentage: json["win_percentage"],
  );

  Map<String, dynamic> toJson() => {
    "damage": damage,
    "kills": kills,
    "deaths": deaths,
    "losses": losses,
    "wins": wins,
    "win_streaks": winStreaks,
    "games": games,
    "healed": healed,
    "kd": kd,
    "win_loss": winLoss,
    "win_percentage": winPercentage,
  };
}

class RuneLevels {
  int damage;
  int energy;
  int slowing;
  int speed;

  RuneLevels({
    this.damage,
    this.energy,
    this.slowing,
    this.speed,
  });

  factory RuneLevels.fromRawJson(String str) => RuneLevels.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RuneLevels.fromJson(Map<String, dynamic> json) => RuneLevels(
    damage: json["damage"],
    energy: json["energy"],
    slowing: json["slowing"],
    speed: json["speed"],
  );

  Map<String, dynamic> toJson() => {
    "damage": damage,
    "energy": energy,
    "slowing": slowing,
    "speed": speed,
  };
}

class Skills {
  String offensive;
  String support;
  String utility;
  String ultimate;

  Skills({
    this.offensive,
    this.support,
    this.utility,
    this.ultimate,
  });

  factory Skills.fromRawJson(String str) => Skills.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Skills.fromJson(Map<String, dynamic> json) => Skills(
    offensive: json["offensive"],
    support: json["support"],
    utility: json["utility"],
    ultimate: json["ultimate"],
  );

  Map<String, dynamic> toJson() => {
    "offensive": offensive,
    "support": support,
    "utility": utility,
    "ultimate": ultimate,
  };
}

class BedWars {
  int coins;
  double exp;
  int level;
  int wins;
  int losses;
  int gamesPlayed;
  int kills;
  int deaths;
  double kD;
  double wL;
  int bedsBroken;
  int bedsLost;
  double bedRatio;
  int finalKills;
  int finalDeaths;
  double finalKD;
  int voidKills;
  int voidDeaths;
  int winstreak;
  Boxes boxes;
  ResourcesCollected resourcesCollected;
  InventoriesClass gamemodes;

  BedWars({
    this.coins,
    this.exp,
    this.level,
    this.wins,
    this.losses,
    this.gamesPlayed,
    this.kills,
    this.deaths,
    this.kD,
    this.wL,
    this.bedsBroken,
    this.bedsLost,
    this.bedRatio,
    this.finalKills,
    this.finalDeaths,
    this.finalKD,
    this.voidKills,
    this.voidDeaths,
    this.winstreak,
    this.boxes,
    this.resourcesCollected,
    this.gamemodes,
  });

  factory BedWars.fromRawJson(String str) => BedWars.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BedWars.fromJson(Map<String, dynamic> json) => BedWars(
    coins: json["coins"],
    exp: json["exp"],
    level: json["level"],
    wins: json["wins"],
    losses: json["losses"],
    gamesPlayed: json["games_played"],
    kills: json["kills"],
    deaths: json["deaths"],
    kD: json["k_d"],
    wL: json["w_l"],
    bedsBroken: json["beds_broken"],
    bedsLost: json["beds_lost"],
    bedRatio: json["bed_ratio"],
    finalKills: json["final_kills"],
    finalDeaths: json["final_deaths"],
    finalKD: json["final_k_d"],
    voidKills: json["void_kills"],
    voidDeaths: json["void_deaths"],
    winstreak: json["winstreak"],
    boxes: Boxes.fromJson(json["boxes"]),
    resourcesCollected: ResourcesCollected.fromJson(json["resources_collected"]),
    gamemodes: InventoriesClass.fromJson(json["gamemodes"]),
  );

  Map<String, dynamic> toJson() => {
    "coins": coins,
    "exp": exp,
    "level": level,
    "wins": wins,
    "losses": losses,
    "games_played": gamesPlayed,
    "kills": kills,
    "deaths": deaths,
    "k_d": kD,
    "w_l": wL,
    "beds_broken": bedsBroken,
    "beds_lost": bedsLost,
    "bed_ratio": bedRatio,
    "final_kills": finalKills,
    "final_deaths": finalDeaths,
    "final_k_d": finalKD,
    "void_kills": voidKills,
    "void_deaths": voidDeaths,
    "winstreak": winstreak,
    "boxes": boxes.toJson(),
    "resources_collected": resourcesCollected.toJson(),
    "gamemodes": gamemodes.toJson(),
  };
}

class Boxes {
  int current;
  int opened;
  int commons;
  int rares;
  int epics;
  int legendaries;

  Boxes({
    this.current,
    this.opened,
    this.commons,
    this.rares,
    this.epics,
    this.legendaries,
  });

  factory Boxes.fromRawJson(String str) => Boxes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Boxes.fromJson(Map<String, dynamic> json) => Boxes(
    current: json["current"],
    opened: json["opened"],
    commons: json["commons"],
    rares: json["rares"],
    epics: json["epics"],
    legendaries: json["legendaries"],
  );

  Map<String, dynamic> toJson() => {
    "current": current,
    "opened": opened,
    "commons": commons,
    "rares": rares,
    "epics": epics,
    "legendaries": legendaries,
  };
}

class InventoriesClass {
  InventoriesClass();

  factory InventoriesClass.fromRawJson(String str) => InventoriesClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory InventoriesClass.fromJson(Map<String, dynamic> json) => InventoriesClass(
  );

  Map<String, dynamic> toJson() => {
  };
}

class ResourcesCollected {
  int iron;
  int gold;
  int diamond;
  int emerald;

  ResourcesCollected({
    this.iron,
    this.gold,
    this.diamond,
    this.emerald,
  });

  factory ResourcesCollected.fromRawJson(String str) => ResourcesCollected.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResourcesCollected.fromJson(Map<String, dynamic> json) => ResourcesCollected(
    iron: json["iron"],
    gold: json["gold"],
    diamond: json["diamond"],
    emerald: json["emerald"],
  );

  Map<String, dynamic> toJson() => {
    "iron": iron,
    "gold": gold,
    "diamond": diamond,
    "emerald": emerald,
  };
}

class Blitz {
  int coins;
  int deaths;
  int kills;
  double kD;
  int wins;
  int teamWins;
  double winLoss;
  int winPercentage;
  int weeklyKills;
  int monthlyKills;
  int ramboWins;
  int randomWins;
  int damageTaken;
  int tauntKills;
  int potionsDrunk;
  int damage;
  int mobsSpawned;
  double timePlayed;
  int arrowsHit;
  double gamesPlayed;
  int potionsThrown;
  int arrowsFired;
  int blitzUses;
  int chestsOpened;
  InventoriesClass kitsLevels;
  InventoriesClass kitStats;
  Equipped equipped;
  Settings settings;
  InventoriesClass inventories;

  Blitz({
    this.coins,
    this.deaths,
    this.kills,
    this.kD,
    this.wins,
    this.teamWins,
    this.winLoss,
    this.winPercentage,
    this.weeklyKills,
    this.monthlyKills,
    this.ramboWins,
    this.randomWins,
    this.damageTaken,
    this.tauntKills,
    this.potionsDrunk,
    this.damage,
    this.mobsSpawned,
    this.timePlayed,
    this.arrowsHit,
    this.gamesPlayed,
    this.potionsThrown,
    this.arrowsFired,
    this.blitzUses,
    this.chestsOpened,
    this.kitsLevels,
    this.kitStats,
    this.equipped,
    this.settings,
    this.inventories,
  });

  factory Blitz.fromRawJson(String str) => Blitz.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Blitz.fromJson(Map<String, dynamic> json) => Blitz(
    coins: json["coins"],
    deaths: json["deaths"],
    kills: json["kills"],
    kD: json["k_d"],
    wins: json["wins"],
    teamWins: json["team_wins"],
    winLoss: json["win_loss"],
    winPercentage: json["win_percentage"],
    weeklyKills: json["weekly_kills"],
    monthlyKills: json["monthly_kills"],
    ramboWins: json["rambo_wins"],
    randomWins: json["random_wins"],
    damageTaken: json["damage_taken"],
    tauntKills: json["taunt_kills"],
    potionsDrunk: json["potions_drunk"],
    damage: json["damage"],
    mobsSpawned: json["mobs_spawned"],
    timePlayed: json["time_played"],
    arrowsHit: json["arrows_hit"],
    gamesPlayed: json["games_played"],
    potionsThrown: json["potions_thrown"],
    arrowsFired: json["arrows_fired"],
    blitzUses: json["blitz_uses"],
    chestsOpened: json["chests_opened"],
    kitsLevels: InventoriesClass.fromJson(json["kits_levels"]),
    kitStats: InventoriesClass.fromJson(json["kit_stats"]),
    equipped: Equipped.fromJson(json["equipped"]),
    settings: Settings.fromJson(json["settings"]),
    inventories: InventoriesClass.fromJson(json["inventories"]),
  );

  Map<String, dynamic> toJson() => {
    "coins": coins,
    "deaths": deaths,
    "kills": kills,
    "k_d": kD,
    "wins": wins,
    "team_wins": teamWins,
    "win_loss": winLoss,
    "win_percentage": winPercentage,
    "weekly_kills": weeklyKills,
    "monthly_kills": monthlyKills,
    "rambo_wins": ramboWins,
    "random_wins": randomWins,
    "damage_taken": damageTaken,
    "taunt_kills": tauntKills,
    "potions_drunk": potionsDrunk,
    "damage": damage,
    "mobs_spawned": mobsSpawned,
    "time_played": timePlayed,
    "arrows_hit": arrowsHit,
    "games_played": gamesPlayed,
    "potions_thrown": potionsThrown,
    "arrows_fired": arrowsFired,
    "blitz_uses": blitzUses,
    "chests_opened": chestsOpened,
    "kits_levels": kitsLevels.toJson(),
    "kit_stats": kitStats.toJson(),
    "equipped": equipped.toJson(),
    "settings": settings.toJson(),
    "inventories": inventories.toJson(),
  };
}

class Equipped {
  String aura;
  String taunt;
  String victoryDance;
  String finisher;

  Equipped({
    this.aura,
    this.taunt,
    this.victoryDance,
    this.finisher,
  });

  factory Equipped.fromRawJson(String str) => Equipped.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Equipped.fromJson(Map<String, dynamic> json) => Equipped(
    aura: json["aura"],
    taunt: json["taunt"],
    victoryDance: json["victory_dance"],
    finisher: json["finisher"],
  );

  Map<String, dynamic> toJson() => {
    "aura": aura,
    "taunt": taunt,
    "victory_dance": victoryDance,
    "finisher": finisher,
  };
}

class Settings {
  String defaultKit;
  bool autoArmor;

  Settings({
    this.defaultKit,
    this.autoArmor,
  });

  factory Settings.fromRawJson(String str) => Settings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Settings.fromJson(Map<String, dynamic> json) => Settings(
    defaultKit: json["default_kit"],
    autoArmor: json["auto_armor"],
  );

  Map<String, dynamic> toJson() => {
    "default_kit": defaultKit,
    "auto_armor": autoArmor,
  };
}

class BuildBattle {
  int coins;
  int score;
  int wins;
  int wR;
  int totalVotes;
  int winsSoloNormal;
  int winsSoloPro;
  int winsTeamsNormal;
  int winsGuessTheBuild;
  int correctGuesses;
  int gamesPlayed;
  int superVotes;
  List<String> loadout;
  String selectedHat;
  String selectedVictoryDance;
  String selectedSuit;
  String selectedMovementTrail;
  String selectedBackdrop;
  InventoriesClass themeRatings;

  BuildBattle({
    this.coins,
    this.score,
    this.wins,
    this.wR,
    this.totalVotes,
    this.winsSoloNormal,
    this.winsSoloPro,
    this.winsTeamsNormal,
    this.winsGuessTheBuild,
    this.correctGuesses,
    this.gamesPlayed,
    this.superVotes,
    this.loadout,
    this.selectedHat,
    this.selectedVictoryDance,
    this.selectedSuit,
    this.selectedMovementTrail,
    this.selectedBackdrop,
    this.themeRatings,
  });

  factory BuildBattle.fromRawJson(String str) => BuildBattle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BuildBattle.fromJson(Map<String, dynamic> json) => BuildBattle(
    coins: json["coins"],
    score: json["score"],
    wins: json["wins"],
    wR: json["w_r"],
    totalVotes: json["total_votes"],
    winsSoloNormal: json["wins_solo_normal"],
    winsSoloPro: json["wins_solo_pro"],
    winsTeamsNormal: json["wins_teams_normal"],
    winsGuessTheBuild: json["wins_guess_the_build"],
    correctGuesses: json["correct_guesses"],
    gamesPlayed: json["games_played"],
    superVotes: json["super_votes"],
    loadout: List<String>.from(json["loadout"].map((x) => x)),
    selectedHat: json["selected_hat"],
    selectedVictoryDance: json["selected_victory_dance"],
    selectedSuit: json["selected_suit"],
    selectedMovementTrail: json["selected_movement_trail"],
    selectedBackdrop: json["selected_backdrop"],
    themeRatings: InventoriesClass.fromJson(json["themeRatings"]),
  );

  Map<String, dynamic> toJson() => {
    "coins": coins,
    "score": score,
    "wins": wins,
    "w_r": wR,
    "total_votes": totalVotes,
    "wins_solo_normal": winsSoloNormal,
    "wins_solo_pro": winsSoloPro,
    "wins_teams_normal": winsTeamsNormal,
    "wins_guess_the_build": winsGuessTheBuild,
    "correct_guesses": correctGuesses,
    "games_played": gamesPlayed,
    "super_votes": superVotes,
    "loadout": List<dynamic>.from(loadout.map((x) => x)),
    "selected_hat": selectedHat,
    "selected_victory_dance": selectedVictoryDance,
    "selected_suit": selectedSuit,
    "selected_movement_trail": selectedMovementTrail,
    "selected_backdrop": selectedBackdrop,
    "themeRatings": themeRatings.toJson(),
  };
}

class CvC {
  int coins;
  int deaths;
  int kills;
  double kd;
  int wins;
  int copKills;
  int criminalKills;
  int weeklyKills;
  int monthlyKills;
  int bombsPlanted;
  int bombsDefused;
  int grenadeKills;
  int headshotKills;
  int roundWins;
  String selectedLobbyPrefix;
  int shotsFired;
  bool showLobbyPrefix;
  MapWins mapWins;
  Deathmatch deathmatch;
  Perks perks;
  SelectedCosmetics selectedCosmetics;

  CvC({
    this.coins,
    this.deaths,
    this.kills,
    this.kd,
    this.wins,
    this.copKills,
    this.criminalKills,
    this.weeklyKills,
    this.monthlyKills,
    this.bombsPlanted,
    this.bombsDefused,
    this.grenadeKills,
    this.headshotKills,
    this.roundWins,
    this.selectedLobbyPrefix,
    this.shotsFired,
    this.showLobbyPrefix,
    this.mapWins,
    this.deathmatch,
    this.perks,
    this.selectedCosmetics,
  });

  factory CvC.fromRawJson(String str) => CvC.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CvC.fromJson(Map<String, dynamic> json) => CvC(
    coins: json["coins"],
    deaths: json["deaths"],
    kills: json["kills"],
    kd: json["kd"],
    wins: json["wins"],
    copKills: json["cop_kills"],
    criminalKills: json["criminal_kills"],
    weeklyKills: json["weekly_kills"],
    monthlyKills: json["monthly_kills"],
    bombsPlanted: json["bombs_planted"],
    bombsDefused: json["bombs_defused"],
    grenadeKills: json["grenade_kills"],
    headshotKills: json["headshot_kills"],
    roundWins: json["round_wins"],
    selectedLobbyPrefix: json["selected_lobby_prefix"],
    shotsFired: json["shots_fired"],
    showLobbyPrefix: json["show_lobby_prefix"],
    mapWins: MapWins.fromJson(json["map_wins"]),
    deathmatch: Deathmatch.fromJson(json["deathmatch"]),
    perks: Perks.fromJson(json["perks"]),
    selectedCosmetics: SelectedCosmetics.fromJson(json["selected_cosmetics"]),
  );

  Map<String, dynamic> toJson() => {
    "coins": coins,
    "deaths": deaths,
    "kills": kills,
    "kd": kd,
    "wins": wins,
    "cop_kills": copKills,
    "criminal_kills": criminalKills,
    "weekly_kills": weeklyKills,
    "monthly_kills": monthlyKills,
    "bombs_planted": bombsPlanted,
    "bombs_defused": bombsDefused,
    "grenade_kills": grenadeKills,
    "headshot_kills": headshotKills,
    "round_wins": roundWins,
    "selected_lobby_prefix": selectedLobbyPrefix,
    "shots_fired": shotsFired,
    "show_lobby_prefix": showLobbyPrefix,
    "map_wins": mapWins.toJson(),
    "deathmatch": deathmatch.toJson(),
    "perks": perks.toJson(),
    "selected_cosmetics": selectedCosmetics.toJson(),
  };
}

class Deathmatch {
  int kills;
  int deaths;
  double kd;
  int wins;
  int copKills;
  int criminalKills;

  Deathmatch({
    this.kills,
    this.deaths,
    this.kd,
    this.wins,
    this.copKills,
    this.criminalKills,
  });

  factory Deathmatch.fromRawJson(String str) => Deathmatch.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Deathmatch.fromJson(Map<String, dynamic> json) => Deathmatch(
    kills: json["kills"],
    deaths: json["deaths"],
    kd: json["kd"],
    wins: json["wins"],
    copKills: json["cop_kills"],
    criminalKills: json["criminal_kills"],
  );

  Map<String, dynamic> toJson() => {
    "kills": kills,
    "deaths": deaths,
    "kd": kd,
    "wins": wins,
    "cop_kills": copKills,
    "criminal_kills": criminalKills,
  };
}

class MapWins {
  int alleyway;
  int atomic;
  int carrier;
  int melonFactory;
  int overgrown;
  int reserve;
  int sandstorm;
  int temple;

  MapWins({
    this.alleyway,
    this.atomic,
    this.carrier,
    this.melonFactory,
    this.overgrown,
    this.reserve,
    this.sandstorm,
    this.temple,
  });

  factory MapWins.fromRawJson(String str) => MapWins.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MapWins.fromJson(Map<String, dynamic> json) => MapWins(
    alleyway: json["alleyway"],
    atomic: json["atomic"],
    carrier: json["carrier"],
    melonFactory: json["melon_factory"],
    overgrown: json["overgrown"],
    reserve: json["reserve"],
    sandstorm: json["sandstorm"],
    temple: json["temple"],
  );

  Map<String, dynamic> toJson() => {
    "alleyway": alleyway,
    "atomic": atomic,
    "carrier": carrier,
    "melon_factory": melonFactory,
    "overgrown": overgrown,
    "reserve": reserve,
    "sandstorm": sandstorm,
    "temple": temple,
  };
}

class Perks {
  PlayerClass player;
  Carbine carbine;
  Knife knife;
  Carbine magnum;
  Carbine pistol;
  Carbine rifle;
  Carbine shotgun;
  Carbine smg;
  Carbine sniper;

  Perks({
    this.player,
    this.carbine,
    this.knife,
    this.magnum,
    this.pistol,
    this.rifle,
    this.shotgun,
    this.smg,
    this.sniper,
  });

  factory Perks.fromRawJson(String str) => Perks.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Perks.fromJson(Map<String, dynamic> json) => Perks(
    player: PlayerClass.fromJson(json["player"]),
    carbine: Carbine.fromJson(json["carbine"]),
    knife: Knife.fromJson(json["knife"]),
    magnum: Carbine.fromJson(json["magnum"]),
    pistol: Carbine.fromJson(json["pistol"]),
    rifle: Carbine.fromJson(json["rifle"]),
    shotgun: Carbine.fromJson(json["shotgun"]),
    smg: Carbine.fromJson(json["smg"]),
    sniper: Carbine.fromJson(json["sniper"]),
  );

  Map<String, dynamic> toJson() => {
    "player": player.toJson(),
    "carbine": carbine.toJson(),
    "knife": knife.toJson(),
    "magnum": magnum.toJson(),
    "pistol": pistol.toJson(),
    "rifle": rifle.toJson(),
    "shotgun": shotgun.toJson(),
    "smg": smg.toJson(),
    "sniper": sniper.toJson(),
  };
}

class Carbine {
  int costReduction;
  int damageIncrease;
  int recoilReduction;
  int reloadSpeedReduction;
  int chargeBonus;

  Carbine({
    this.costReduction,
    this.damageIncrease,
    this.recoilReduction,
    this.reloadSpeedReduction,
    this.chargeBonus,
  });

  factory Carbine.fromRawJson(String str) => Carbine.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Carbine.fromJson(Map<String, dynamic> json) => Carbine(
    costReduction: json["cost_reduction"] == null ? null : json["cost_reduction"],
    damageIncrease: json["damage_increase"],
    recoilReduction: json["recoil_reduction"] == null ? null : json["recoil_reduction"],
    reloadSpeedReduction: json["reload_speed_reduction"],
    chargeBonus: json["charge_bonus"] == null ? null : json["charge_bonus"],
  );

  Map<String, dynamic> toJson() => {
    "cost_reduction": costReduction == null ? null : costReduction,
    "damage_increase": damageIncrease,
    "recoil_reduction": recoilReduction == null ? null : recoilReduction,
    "reload_speed_reduction": reloadSpeedReduction,
    "charge_bonus": chargeBonus == null ? null : chargeBonus,
  };
}

class Knife {
  int attackDelay;
  int damageIncrease;

  Knife({
    this.attackDelay,
    this.damageIncrease,
  });

  factory Knife.fromRawJson(String str) => Knife.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Knife.fromJson(Map<String, dynamic> json) => Knife(
    attackDelay: json["attack_delay"],
    damageIncrease: json["damage_increase"],
  );

  Map<String, dynamic> toJson() => {
    "attack_delay": attackDelay,
    "damage_increase": damageIncrease,
  };
}

class PlayerClass {
  int bodyArmorCost;
  int bountyHunter;
  int pocketChange;
  int strengthTraining;

  PlayerClass({
    this.bodyArmorCost,
    this.bountyHunter,
    this.pocketChange,
    this.strengthTraining,
  });

  factory PlayerClass.fromRawJson(String str) => PlayerClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlayerClass.fromJson(Map<String, dynamic> json) => PlayerClass(
    bodyArmorCost: json["body_armor_cost"],
    bountyHunter: json["bounty_hunter"],
    pocketChange: json["pocket_change"],
    strengthTraining: json["strength_training"],
  );

  Map<String, dynamic> toJson() => {
    "body_armor_cost": bodyArmorCost,
    "bounty_hunter": bountyHunter,
    "pocket_change": pocketChange,
    "strength_training": strengthTraining,
  };
}

class SelectedCosmetics {
  String carbine;
  String knife;
  String magnum;
  String pistol;
  String rifle;
  String shotgun;
  String smg;

  SelectedCosmetics({
    this.carbine,
    this.knife,
    this.magnum,
    this.pistol,
    this.rifle,
    this.shotgun,
    this.smg,
  });

  factory SelectedCosmetics.fromRawJson(String str) => SelectedCosmetics.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SelectedCosmetics.fromJson(Map<String, dynamic> json) => SelectedCosmetics(
    carbine: json["carbine"],
    knife: json["knife"],
    magnum: json["magnum"],
    pistol: json["pistol"],
    rifle: json["rifle"],
    shotgun: json["shotgun"],
    smg: json["smg"],
  );

  Map<String, dynamic> toJson() => {
    "carbine": carbine,
    "knife": knife,
    "magnum": magnum,
    "pistol": pistol,
    "rifle": rifle,
    "shotgun": shotgun,
    "smg": smg,
  };
}

class Duels {
  int coins;

  Duels({
    this.coins,
  });

  factory Duels.fromRawJson(String str) => Duels.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Duels.fromJson(Map<String, dynamic> json) => Duels(
    coins: json["coins"],
  );

  Map<String, dynamic> toJson() => {
    "coins": coins,
  };
}

class Pit {
  Profile profile;
  int statsMove1;
  int restoredInvBackup1;
  Map<String, int> pitStatsPtl;

  Pit({
    this.profile,
    this.statsMove1,
    this.restoredInvBackup1,
    this.pitStatsPtl,
  });

  factory Pit.fromRawJson(String str) => Pit.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pit.fromJson(Map<String, dynamic> json) => Pit(
    profile: Profile.fromJson(json["profile"]),
    statsMove1: json["stats_move_1"],
    restoredInvBackup1: json["restored_inv_backup_1"],
    pitStatsPtl: Map.from(json["pit_stats_ptl"]).map((k, v) => MapEntry<String, int>(k, v)),
  );

  Map<String, dynamic> toJson() => {
    "profile": profile.toJson(),
    "stats_move_1": statsMove1,
    "restored_inv_backup_1": restoredInvBackup1,
    "pit_stats_ptl": Map.from(pitStatsPtl).map((k, v) => MapEntry<String, dynamic>(k, v)),
  };
}

class Profile {
  List<dynamic> outgoingOffers;
  List<dynamic> contractChoices;
  int lastSave;
  int hatColor;
  List<int> tradeTimestamps;
  bool impatientEnabled;
  DeathRecaps invEnderchest;
  DeathRecaps invContents;
  DeathRecaps invArmor;
  DeathRecaps itemStash;
  DeathRecaps mysticWellItem;
  DeathRecaps mysticWellPants;
  DeathRecaps deathRecaps;
  double cash;
  InventoriesClass leaderboardStats;
  bool genesisSpawnInBase;
  String selectedPerk0;
  String selectedPerk1;
  String selectedPerk2;
  String selectedPerk3;
  int lastContract;
  List<EndedContract> endedContracts;
  List<GoldTransaction> goldTransactions;
  int renown;
  bool hatEnabled;
  int genesisPoints;
  bool dropConfirmDisabled;
  List<Prestige> prestiges;
  bool zeroPointThreeGoldTransfer;
  List<RenownUnlock> renownUnlocks;
  String selectedLaunchTrail;
  String selectedLeaderboard;
  int lastMidfightDisconnect;
  int genesisAllegianceTime;
  int genesisWeeklyPerksClaimItemDemon;
  List<dynamic> loginMessages;
  List<int> hotbarFavorites;
  int reconessenceDay;
  bool chatOptionPlayerChat;
  bool chatOptionMisc;
  bool chatOptionBounties;
  bool chatOptionPrestigeAnnouncements;
  bool chatOptionStreaks;
  bool chatOptionKillFeed;
  bool apolloEnabled;
  int zeroPointTwoXp;
  int lastLycanthropy;
  List<RecentKill> recentKills;
  int xp;
  List<Bounty> bounties;
  bool nightQuestsEnabled;
  String genesisAllegiance;
  double cashDuringPrestige0;
  double cashDuringPrestige1;
  List<RenownUnlock> unlocks;
  List<RenownUnlock> unlocks1;

  Profile({
    this.outgoingOffers,
    this.contractChoices,
    this.lastSave,
    this.hatColor,
    this.tradeTimestamps,
    this.impatientEnabled,
    this.invEnderchest,
    this.invContents,
    this.invArmor,
    this.itemStash,
    this.mysticWellItem,
    this.mysticWellPants,
    this.deathRecaps,
    this.cash,
    this.leaderboardStats,
    this.genesisSpawnInBase,
    this.selectedPerk0,
    this.selectedPerk1,
    this.selectedPerk2,
    this.selectedPerk3,
    this.lastContract,
    this.endedContracts,
    this.goldTransactions,
    this.renown,
    this.hatEnabled,
    this.genesisPoints,
    this.dropConfirmDisabled,
    this.prestiges,
    this.zeroPointThreeGoldTransfer,
    this.renownUnlocks,
    this.selectedLaunchTrail,
    this.selectedLeaderboard,
    this.lastMidfightDisconnect,
    this.genesisAllegianceTime,
    this.genesisWeeklyPerksClaimItemDemon,
    this.loginMessages,
    this.hotbarFavorites,
    this.reconessenceDay,
    this.chatOptionPlayerChat,
    this.chatOptionMisc,
    this.chatOptionBounties,
    this.chatOptionPrestigeAnnouncements,
    this.chatOptionStreaks,
    this.chatOptionKillFeed,
    this.apolloEnabled,
    this.zeroPointTwoXp,
    this.lastLycanthropy,
    this.recentKills,
    this.xp,
    this.bounties,
    this.nightQuestsEnabled,
    this.genesisAllegiance,
    this.cashDuringPrestige0,
    this.cashDuringPrestige1,
    this.unlocks,
    this.unlocks1,
  });

  factory Profile.fromRawJson(String str) => Profile.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
    outgoingOffers: List<dynamic>.from(json["outgoing_offers"].map((x) => x)),
    contractChoices: List<dynamic>.from(json["contract_choices"].map((x) => x)),
    lastSave: json["last_save"],
    hatColor: json["hat_color"],
    tradeTimestamps: List<int>.from(json["trade_timestamps"].map((x) => x)),
    impatientEnabled: json["impatient_enabled"],
    invEnderchest: DeathRecaps.fromJson(json["inv_enderchest"]),
    invContents: DeathRecaps.fromJson(json["inv_contents"]),
    invArmor: DeathRecaps.fromJson(json["inv_armor"]),
    itemStash: DeathRecaps.fromJson(json["item_stash"]),
    mysticWellItem: DeathRecaps.fromJson(json["mystic_well_item"]),
    mysticWellPants: DeathRecaps.fromJson(json["mystic_well_pants"]),
    deathRecaps: DeathRecaps.fromJson(json["death_recaps"]),
    cash: json["cash"],
    leaderboardStats: InventoriesClass.fromJson(json["leaderboard_stats"]),
    genesisSpawnInBase: json["genesis_spawn_in_base"],
    selectedPerk0: json["selected_perk_0"],
    selectedPerk1: json["selected_perk_1"],
    selectedPerk2: json["selected_perk_2"],
    selectedPerk3: json["selected_perk_3"],
    lastContract: json["last_contract"],
    endedContracts: List<EndedContract>.from(json["ended_contracts"].map((x) => EndedContract.fromJson(x))),
    goldTransactions: List<GoldTransaction>.from(json["gold_transactions"].map((x) => GoldTransaction.fromJson(x))),
    renown: json["renown"],
    hatEnabled: json["hat_enabled"],
    genesisPoints: json["genesis_points"],
    dropConfirmDisabled: json["drop_confirm_disabled"],
    prestiges: List<Prestige>.from(json["prestiges"].map((x) => Prestige.fromJson(x))),
    zeroPointThreeGoldTransfer: json["zero_point_three_gold_transfer"],
    renownUnlocks: List<RenownUnlock>.from(json["renown_unlocks"].map((x) => RenownUnlock.fromJson(x))),
    selectedLaunchTrail: json["selected_launch_trail"],
    selectedLeaderboard: json["selected_leaderboard"],
    lastMidfightDisconnect: json["last_midfight_disconnect"],
    genesisAllegianceTime: json["genesis_allegiance_time"],
    genesisWeeklyPerksClaimItemDemon: json["genesis_weekly_perks_claim_item_demon"],
    loginMessages: List<dynamic>.from(json["login_messages"].map((x) => x)),
    hotbarFavorites: List<int>.from(json["hotbar_favorites"].map((x) => x)),
    reconessenceDay: json["reconessence_day"],
    chatOptionPlayerChat: json["chat_option_player_chat"],
    chatOptionMisc: json["chat_option_misc"],
    chatOptionBounties: json["chat_option_bounties"],
    chatOptionPrestigeAnnouncements: json["chat_option_prestige_announcements"],
    chatOptionStreaks: json["chat_option_streaks"],
    chatOptionKillFeed: json["chat_option_kill_feed"],
    apolloEnabled: json["apollo_enabled"],
    zeroPointTwoXp: json["zero_point_two_xp"],
    lastLycanthropy: json["last_lycanthropy"],
    recentKills: List<RecentKill>.from(json["recent_kills"].map((x) => RecentKill.fromJson(x))),
    xp: json["xp"],
    bounties: List<Bounty>.from(json["bounties"].map((x) => Bounty.fromJson(x))),
    nightQuestsEnabled: json["night_quests_enabled"],
    genesisAllegiance: json["genesis_allegiance"],
    cashDuringPrestige0: json["cash_during_prestige_0"],
    cashDuringPrestige1: json["cash_during_prestige_1"],
    unlocks: List<RenownUnlock>.from(json["unlocks"].map((x) => RenownUnlock.fromJson(x))),
    unlocks1: List<RenownUnlock>.from(json["unlocks_1"].map((x) => RenownUnlock.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "outgoing_offers": List<dynamic>.from(outgoingOffers.map((x) => x)),
    "contract_choices": List<dynamic>.from(contractChoices.map((x) => x)),
    "last_save": lastSave,
    "hat_color": hatColor,
    "trade_timestamps": List<dynamic>.from(tradeTimestamps.map((x) => x)),
    "impatient_enabled": impatientEnabled,
    "inv_enderchest": invEnderchest.toJson(),
    "inv_contents": invContents.toJson(),
    "inv_armor": invArmor.toJson(),
    "item_stash": itemStash.toJson(),
    "mystic_well_item": mysticWellItem.toJson(),
    "mystic_well_pants": mysticWellPants.toJson(),
    "death_recaps": deathRecaps.toJson(),
    "cash": cash,
    "leaderboard_stats": leaderboardStats.toJson(),
    "genesis_spawn_in_base": genesisSpawnInBase,
    "selected_perk_0": selectedPerk0,
    "selected_perk_1": selectedPerk1,
    "selected_perk_2": selectedPerk2,
    "selected_perk_3": selectedPerk3,
    "last_contract": lastContract,
    "ended_contracts": List<dynamic>.from(endedContracts.map((x) => x.toJson())),
    "gold_transactions": List<dynamic>.from(goldTransactions.map((x) => x.toJson())),
    "renown": renown,
    "hat_enabled": hatEnabled,
    "genesis_points": genesisPoints,
    "drop_confirm_disabled": dropConfirmDisabled,
    "prestiges": List<dynamic>.from(prestiges.map((x) => x.toJson())),
    "zero_point_three_gold_transfer": zeroPointThreeGoldTransfer,
    "renown_unlocks": List<dynamic>.from(renownUnlocks.map((x) => x.toJson())),
    "selected_launch_trail": selectedLaunchTrail,
    "selected_leaderboard": selectedLeaderboard,
    "last_midfight_disconnect": lastMidfightDisconnect,
    "genesis_allegiance_time": genesisAllegianceTime,
    "genesis_weekly_perks_claim_item_demon": genesisWeeklyPerksClaimItemDemon,
    "login_messages": List<dynamic>.from(loginMessages.map((x) => x)),
    "hotbar_favorites": List<dynamic>.from(hotbarFavorites.map((x) => x)),
    "reconessence_day": reconessenceDay,
    "chat_option_player_chat": chatOptionPlayerChat,
    "chat_option_misc": chatOptionMisc,
    "chat_option_bounties": chatOptionBounties,
    "chat_option_prestige_announcements": chatOptionPrestigeAnnouncements,
    "chat_option_streaks": chatOptionStreaks,
    "chat_option_kill_feed": chatOptionKillFeed,
    "apollo_enabled": apolloEnabled,
    "zero_point_two_xp": zeroPointTwoXp,
    "last_lycanthropy": lastLycanthropy,
    "recent_kills": List<dynamic>.from(recentKills.map((x) => x.toJson())),
    "xp": xp,
    "bounties": List<dynamic>.from(bounties.map((x) => x.toJson())),
    "night_quests_enabled": nightQuestsEnabled,
    "genesis_allegiance": genesisAllegiance,
    "cash_during_prestige_0": cashDuringPrestige0,
    "cash_during_prestige_1": cashDuringPrestige1,
    "unlocks": List<dynamic>.from(unlocks.map((x) => x.toJson())),
    "unlocks_1": List<dynamic>.from(unlocks1.map((x) => x.toJson())),
  };
}

class Bounty {
  int amount;
  int timestamp;
  int remainingTicks;
  String issuer;

  Bounty({
    this.amount,
    this.timestamp,
    this.remainingTicks,
    this.issuer,
  });

  factory Bounty.fromRawJson(String str) => Bounty.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Bounty.fromJson(Map<String, dynamic> json) => Bounty(
    amount: json["amount"],
    timestamp: json["timestamp"],
    remainingTicks: json["remainingTicks"],
    issuer: json["issuer"],
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "timestamp": timestamp,
    "remainingTicks": remainingTicks,
    "issuer": issuer,
  };
}

class DeathRecaps {
  int type;
  List<int> data;

  DeathRecaps({
    this.type,
    this.data,
  });

  factory DeathRecaps.fromRawJson(String str) => DeathRecaps.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DeathRecaps.fromJson(Map<String, dynamic> json) => DeathRecaps(
    type: json["type"],
    data: List<int>.from(json["data"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "data": List<dynamic>.from(data.map((x) => x)),
  };
}

class EndedContract {
  String difficulty;
  int goldReward;
  InventoriesClass requirements;
  InventoriesClass progress;
  int chunkOfVilesReward;
  int completionDate;
  int remainingTicks;
  String key;

  EndedContract({
    this.difficulty,
    this.goldReward,
    this.requirements,
    this.progress,
    this.chunkOfVilesReward,
    this.completionDate,
    this.remainingTicks,
    this.key,
  });

  factory EndedContract.fromRawJson(String str) => EndedContract.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EndedContract.fromJson(Map<String, dynamic> json) => EndedContract(
    difficulty: json["difficulty"],
    goldReward: json["gold_reward"],
    requirements: InventoriesClass.fromJson(json["requirements"]),
    progress: InventoriesClass.fromJson(json["progress"]),
    chunkOfVilesReward: json["chunk_of_viles_reward"],
    completionDate: json["completion_date"],
    remainingTicks: json["remaining_ticks"],
    key: json["key"],
  );

  Map<String, dynamic> toJson() => {
    "difficulty": difficulty,
    "gold_reward": goldReward,
    "requirements": requirements.toJson(),
    "progress": progress.toJson(),
    "chunk_of_viles_reward": chunkOfVilesReward,
    "completion_date": completionDate,
    "remaining_ticks": remainingTicks,
    "key": key,
  };
}

class GoldTransaction {
  int amount;
  int timestamp;

  GoldTransaction({
    this.amount,
    this.timestamp,
  });

  factory GoldTransaction.fromRawJson(String str) => GoldTransaction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GoldTransaction.fromJson(Map<String, dynamic> json) => GoldTransaction(
    amount: json["amount"],
    timestamp: json["timestamp"],
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "timestamp": timestamp,
  };
}

class Prestige {
  int index;
  int xpOnPrestige;
  int timestamp;

  Prestige({
    this.index,
    this.xpOnPrestige,
    this.timestamp,
  });

  factory Prestige.fromRawJson(String str) => Prestige.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Prestige.fromJson(Map<String, dynamic> json) => Prestige(
    index: json["index"],
    xpOnPrestige: json["xp_on_prestige"],
    timestamp: json["timestamp"],
  );

  Map<String, dynamic> toJson() => {
    "index": index,
    "xp_on_prestige": xpOnPrestige,
    "timestamp": timestamp,
  };
}

class RecentKill {
  String victim;
  int timestamp;

  RecentKill({
    this.victim,
    this.timestamp,
  });

  factory RecentKill.fromRawJson(String str) => RecentKill.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RecentKill.fromJson(Map<String, dynamic> json) => RecentKill(
    victim: json["victim"],
    timestamp: json["timestamp"],
  );

  Map<String, dynamic> toJson() => {
    "victim": victim,
    "timestamp": timestamp,
  };
}

class RenownUnlock {
  int tier;
  int acquireDate;
  String key;

  RenownUnlock({
    this.tier,
    this.acquireDate,
    this.key,
  });

  factory RenownUnlock.fromRawJson(String str) => RenownUnlock.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RenownUnlock.fromJson(Map<String, dynamic> json) => RenownUnlock(
    tier: json["tier"],
    acquireDate: json["acquireDate"],
    key: json["key"],
  );

  Map<String, dynamic> toJson() => {
    "tier": tier,
    "acquireDate": acquireDate,
    "key": key,
  };
}

class Tkr {
  int coins;
  int coinPickups;
  int laps;
  int wins;
  int boxPickups;
  int bananasSent;
  int bananasReceived;
  double bananaRatio;
  Trophies trophies;
  Maps maps;

  Tkr({
    this.coins,
    this.coinPickups,
    this.laps,
    this.wins,
    this.boxPickups,
    this.bananasSent,
    this.bananasReceived,
    this.bananaRatio,
    this.trophies,
    this.maps,
  });

  factory Tkr.fromRawJson(String str) => Tkr.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tkr.fromJson(Map<String, dynamic> json) => Tkr(
    coins: json["coins"],
    coinPickups: json["coin_pickups"],
    laps: json["laps"],
    wins: json["wins"],
    boxPickups: json["box_pickups"],
    bananasSent: json["bananas_sent"],
    bananasReceived: json["bananas_received"],
    bananaRatio: json["banana_ratio"],
    trophies: Trophies.fromJson(json["trophies"]),
    maps: Maps.fromJson(json["maps"]),
  );

  Map<String, dynamic> toJson() => {
    "coins": coins,
    "coin_pickups": coinPickups,
    "laps": laps,
    "wins": wins,
    "box_pickups": boxPickups,
    "bananas_sent": bananasSent,
    "bananas_received": bananasReceived,
    "banana_ratio": bananaRatio,
    "trophies": trophies.toJson(),
    "maps": maps.toJson(),
  };
}

class Maps {
  Canyon retro;
  Canyon hypixelgp;
  Canyon junglerush;
  Canyon olympus;
  Canyon canyon;

  Maps({
    this.retro,
    this.hypixelgp,
    this.junglerush,
    this.olympus,
    this.canyon,
  });

  factory Maps.fromRawJson(String str) => Maps.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
    retro: Canyon.fromJson(json["retro"]),
    hypixelgp: Canyon.fromJson(json["hypixelgp"]),
    junglerush: Canyon.fromJson(json["junglerush"]),
    olympus: Canyon.fromJson(json["olympus"]),
    canyon: Canyon.fromJson(json["canyon"]),
  );

  Map<String, dynamic> toJson() => {
    "retro": retro.toJson(),
    "hypixelgp": hypixelgp.toJson(),
    "junglerush": junglerush.toJson(),
    "olympus": olympus.toJson(),
    "canyon": canyon.toJson(),
  };
}

class Canyon {
  int games;
  double winRatio;
  Trophies trophies;

  Canyon({
    this.games,
    this.winRatio,
    this.trophies,
  });

  factory Canyon.fromRawJson(String str) => Canyon.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Canyon.fromJson(Map<String, dynamic> json) => Canyon(
    games: json["games"],
    winRatio: json["win_ratio"],
    trophies: Trophies.fromJson(json["trophies"]),
  );

  Map<String, dynamic> toJson() => {
    "games": games,
    "win_ratio": winRatio,
    "trophies": trophies.toJson(),
  };
}

class Trophies {
  int gold;
  int silver;
  int bronze;

  Trophies({
    this.gold,
    this.silver,
    this.bronze,
  });

  factory Trophies.fromRawJson(String str) => Trophies.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Trophies.fromJson(Map<String, dynamic> json) => Trophies(
    gold: json["gold"],
    silver: json["silver"],
    bronze: json["bronze"],
  );

  Map<String, dynamic> toJson() => {
    "gold": gold,
    "silver": silver,
    "bronze": bronze,
  };
}

class Voting {
  int votesToday;
  int totalVotes;
  int lastVote;

  Voting({
    this.votesToday,
    this.totalVotes,
    this.lastVote,
  });

  factory Voting.fromRawJson(String str) => Voting.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Voting.fromJson(Map<String, dynamic> json) => Voting(
    votesToday: json["votes_today"],
    totalVotes: json["total_votes"],
    lastVote: json["last_vote"],
  );

  Map<String, dynamic> toJson() => {
    "votes_today": votesToday,
    "total_votes": totalVotes,
    "last_vote": lastVote,
  };
}
