// To parse this JSON data, do
//
//     final player = playerFromJson(jsonString);

import 'dart:convert';

Player playerFromJson(String str) => Player.fromJson(json.decode(str));

String playerToJson(Player data) => json.encode(data.toJson());

class Player {
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

  String uuid;
  String username;
  bool online;
  String rank;
  String rankPlusColor;
  String rankFormatted;
  String prefix;
  dynamic karma;
  dynamic exp;
  dynamic level;
  dynamic achievementPoints;
  dynamic questsCompleted;
  dynamic totalKills;
  dynamic totalWins;
  dynamic totalCoins;
  String mcVersion;
  dynamic firstLogin;
  dynamic lastLogin;
  dynamic lastLogout;
  String lastGame;
  String language;
  dynamic giftsSent;
  dynamic giftsReceived;
  bool isContributor;
  Rewards rewards;
  Voting voting;
  Links links;
  Stats stats;

  factory Player.fromJson(Map<String, dynamic> json) => Player(
        uuid: json["uuid"] == null ? null : json["uuid"],
        username: json["username"] == null ? null : json["username"],
        online: json["online"] == null ? null : json["online"],
        rank: json["rank"] == null ? null : json["rank"],
        rankPlusColor:
            json["rank_plus_color"] == null ? null : json["rank_plus_color"],
        rankFormatted:
            json["rank_formatted"] == null ? null : json["rank_formatted"],
        prefix: json["prefix"] == null ? null : json["prefix"],
        karma: json["karma"] == null ? null : json["karma"],
        exp: json["exp"] == null ? null : json["exp"],
        level: json["level"] == null ? null : json["level"],
        achievementPoints: json["achievement_points"] == null
            ? null
            : json["achievement_points"],
        questsCompleted:
            json["quests_completed"] == null ? null : json["quests_completed"],
        totalKills: json["total_kills"] == null ? null : json["total_kills"],
        totalWins: json["total_wins"] == null ? null : json["total_wins"],
        totalCoins: json["total_coins"] == null ? null : json["total_coins"],
        mcVersion: json["mc_version"] == null ? null : json["mc_version"],
        firstLogin: json["first_login"] == null ? null : json["first_login"],
        lastLogin: json["last_login"] == null ? null : json["last_login"],
        lastLogout: json["last_logout"] == null ? null : json["last_logout"],
        lastGame: json["last_game"] == null ? null : json["last_game"],
        language: json["language"] == null ? null : json["language"],
        giftsSent: json["gifts_sent"] == null ? null : json["gifts_sent"],
        giftsReceived:
            json["gifts_received"] == null ? null : json["gifts_received"],
        isContributor:
            json["is_contributor"] == null ? null : json["is_contributor"],
        rewards:
            json["rewards"] == null ? null : Rewards.fromJson(json["rewards"]),
        voting: json["voting"] == null ? null : Voting.fromJson(json["voting"]),
        links: json["links"] == null ? null : Links.fromJson(json["links"]),
        stats: json["stats"] == null ? null : Stats.fromJson(json["stats"]),
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid == null ? null : uuid,
        "username": username == null ? null : username,
        "online": online == null ? null : online,
        "rank": rank == null ? null : rank,
        "rank_plus_color": rankPlusColor == null ? null : rankPlusColor,
        "rank_formatted": rankFormatted == null ? null : rankFormatted,
        "prefix": prefix == null ? null : prefix,
        "karma": karma == null ? null : karma,
        "exp": exp == null ? null : exp,
        "level": level == null ? null : level,
        "achievement_points":
            achievementPoints == null ? null : achievementPoints,
        "quests_completed": questsCompleted == null ? null : questsCompleted,
        "total_kills": totalKills == null ? null : totalKills,
        "total_wins": totalWins == null ? null : totalWins,
        "total_coins": totalCoins == null ? null : totalCoins,
        "mc_version": mcVersion == null ? null : mcVersion,
        "first_login": firstLogin == null ? null : firstLogin,
        "last_login": lastLogin == null ? null : lastLogin,
        "last_logout": lastLogout == null ? null : lastLogout,
        "last_game": lastGame == null ? null : lastGame,
        "language": language == null ? null : language,
        "gifts_sent": giftsSent == null ? null : giftsSent,
        "gifts_received": giftsReceived == null ? null : giftsReceived,
        "is_contributor": isContributor == null ? null : isContributor,
        "rewards": rewards == null ? null : rewards.toJson(),
        "voting": voting == null ? null : voting.toJson(),
        "links": links == null ? null : links.toJson(),
        "stats": stats == null ? null : stats.toJson(),
      };
}

class Links {
  Links({
    this.twitter,
    this.youtube,
    this.instagram,
    this.twitch,
    this.mixer,
    this.discord,
    this.hypixel,
  });

  String twitter;
  String youtube;
  String instagram;
  String twitch;
  String mixer;
  String discord;
  String hypixel;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        twitter: json["TWITTER"] == null ? null : json["TWITTER"],
        youtube: json["YOUTUBE"] == null ? null : json["YOUTUBE"],
        instagram: json["INSTAGRAM"] == null ? null : json["INSTAGRAM"],
        twitch: json["TWITCH"] == null ? null : json["TWITCH"],
        mixer: json["MIXER"] == null ? null : json["MIXER"],
        discord: json["DISCORD"] == null ? null : json["DISCORD"],
        hypixel: json["HYPIXEL"] == null ? null : json["HYPIXEL"],
      );

  Map<String, dynamic> toJson() => {
        "TWITTER": twitter == null ? null : twitter,
        "YOUTUBE": youtube == null ? null : youtube,
        "INSTAGRAM": instagram == null ? null : instagram,
        "TWITCH": twitch == null ? null : twitch,
        "MIXER": mixer == null ? null : mixer,
        "DISCORD": discord == null ? null : discord,
        "HYPIXEL": hypixel == null ? null : hypixel,
      };
}

class Rewards {
  Rewards({
    this.streakCurrent,
    this.streakBest,
    this.claimed,
    this.claimedDaily,
    this.tokens,
  });

  dynamic streakCurrent;
  dynamic streakBest;
  dynamic claimed;
  dynamic claimedDaily;
  dynamic tokens;

  factory Rewards.fromJson(Map<String, dynamic> json) => Rewards(
        streakCurrent:
            json["streak_current"] == null ? null : json["streak_current"],
        streakBest: json["streak_best"] == null ? null : json["streak_best"],
        claimed: json["claimed"] == null ? null : json["claimed"],
        claimedDaily:
            json["claimed_daily"] == null ? null : json["claimed_daily"],
        tokens: json["tokens"] == null ? null : json["tokens"],
      );

  Map<String, dynamic> toJson() => {
        "streak_current": streakCurrent == null ? null : streakCurrent,
        "streak_best": streakBest == null ? null : streakBest,
        "claimed": claimed == null ? null : claimed,
        "claimed_daily": claimedDaily == null ? null : claimedDaily,
        "tokens": tokens == null ? null : tokens,
      };
}

class Stats {
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
    this.smash,
  });

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
  Map<String, dynamic> smash;

  factory Stats.fromJson(Map<String, dynamic> json) => Stats(
        arcade: json["Arcade"] == null ? null : Arcade.fromJson(json["Arcade"]),
        arena: json["Arena"] == null ? null : Arena.fromJson(json["Arena"]),
        warlords:
            json["Warlords"] == null ? null : Duels.fromJson(json["Warlords"]),
        bedWars:
            json["BedWars"] == null ? null : BedWars.fromJson(json["BedWars"]),
        buildBattle: json["BuildBattle"] == null
            ? null
            : BuildBattle.fromJson(json["BuildBattle"]),
        duels: json["Duels"] == null ? null : Duels.fromJson(json["Duels"]),
        tkr: json["TKR"] == null ? null : Tkr.fromJson(json["TKR"]),
        blitz: json["Blitz"] == null ? null : Blitz.fromJson(json["Blitz"]),
        cvC: json["CvC"] == null ? null : CvC.fromJson(json["CvC"]),
        murderMystery: json["MurderMystery"] == null
            ? null
            : Duels.fromJson(json["MurderMystery"]),
        pit: json["Pit"] == null ? null : Pit.fromJson(json["Pit"]),
        smash: json["Smash"] == null
            ? null
            : Map.from(json["Smash"])
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
      );

  Map<String, dynamic> toJson() => {
        "Arcade": arcade == null ? null : arcade.toJson(),
        "Arena": arena == null ? null : arena.toJson(),
        "Warlords": warlords == null ? null : warlords.toJson(),
        "BedWars": bedWars == null ? null : bedWars.toJson(),
        "BuildBattle": buildBattle == null ? null : buildBattle.toJson(),
        "Duels": duels == null ? null : duels.toJson(),
        "TKR": tkr == null ? null : tkr.toJson(),
        "Blitz": blitz == null ? null : blitz.toJson(),
        "CvC": cvC == null ? null : cvC.toJson(),
        "MurderMystery": murderMystery == null ? null : murderMystery.toJson(),
        "Pit": pit == null ? null : pit.toJson(),
        "Smash": smash == null
            ? null
            : Map.from(smash).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}

class Arcade {
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

  dynamic coins;
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

  factory Arcade.fromJson(Map<String, dynamic> json) => Arcade(
        coins: json["coins"] == null ? null : json["coins"],
        blockingDead: json["blocking_dead"] == null
            ? null
            : BlockingDead.fromJson(json["blocking_dead"]),
        dragonwars: json["dragonwars"] == null
            ? null
            : Dragonwars.fromJson(json["dragonwars"]),
        hypixelSays: json["hypixel_says"] == null
            ? null
            : Says.fromJson(json["hypixel_says"]),
        santaSays: json["santa_says"] == null
            ? null
            : Says.fromJson(json["santa_says"]),
        miniwalls: json["miniwalls"] == null
            ? null
            : Miniwalls.fromJson(json["miniwalls"]),
        partyGames: json["party_games"] == null
            ? null
            : PartyGames.fromJson(json["party_games"]),
        bountyHunters: json["bounty_hunters"] == null
            ? null
            : BountyHunters.fromJson(json["bounty_hunters"]),
        galaxyWars: json["galaxy_wars"] == null
            ? null
            : GalaxyWars.fromJson(json["galaxy_wars"]),
        farmHunt: json["farm_hunt"] == null
            ? null
            : FarmHunt.fromJson(json["farm_hunt"]),
        football: json["football"] == null
            ? null
            : Football.fromJson(json["football"]),
        creeperAttack: json["creeper_attack"] == null
            ? null
            : CreeperAttack.fromJson(json["creeper_attack"]),
        holeInTheWall: json["hole_in_the_wall"] == null
            ? null
            : HoleInTheWall.fromJson(json["hole_in_the_wall"]),
        zombies:
            json["zombies"] == null ? null : Zombies.fromJson(json["zombies"]),
      );

  Map<String, dynamic> toJson() => {
        "coins": coins == null ? null : coins,
        "blocking_dead": blockingDead == null ? null : blockingDead.toJson(),
        "dragonwars": dragonwars == null ? null : dragonwars.toJson(),
        "hypixel_says": hypixelSays == null ? null : hypixelSays.toJson(),
        "santa_says": santaSays == null ? null : santaSays.toJson(),
        "miniwalls": miniwalls == null ? null : miniwalls.toJson(),
        "party_games": partyGames == null ? null : partyGames.toJson(),
        "bounty_hunters": bountyHunters == null ? null : bountyHunters.toJson(),
        "galaxy_wars": galaxyWars == null ? null : galaxyWars.toJson(),
        "farm_hunt": farmHunt == null ? null : farmHunt.toJson(),
        "football": football == null ? null : football.toJson(),
        "creeper_attack": creeperAttack == null ? null : creeperAttack.toJson(),
        "hole_in_the_wall":
            holeInTheWall == null ? null : holeInTheWall.toJson(),
        "zombies": zombies == null ? null : zombies.toJson(),
      };
}

class BlockingDead {
  BlockingDead({
    this.wins,
    this.zombieKills,
    this.headshots,
  });

  dynamic wins;
  dynamic zombieKills;
  dynamic headshots;

  factory BlockingDead.fromJson(Map<String, dynamic> json) => BlockingDead(
        wins: json["wins"] == null ? null : json["wins"],
        zombieKills: json["zombie_kills"] == null ? null : json["zombie_kills"],
        headshots: json["headshots"] == null ? null : json["headshots"],
      );

  Map<String, dynamic> toJson() => {
        "wins": wins == null ? null : wins,
        "zombie_kills": zombieKills == null ? null : zombieKills,
        "headshots": headshots == null ? null : headshots,
      };
}

class BountyHunters {
  BountyHunters({
    this.wins,
    this.kills,
    this.deaths,
    this.bountyKills,
  });

  dynamic wins;
  dynamic kills;
  dynamic deaths;
  dynamic bountyKills;

  factory BountyHunters.fromJson(Map<String, dynamic> json) => BountyHunters(
        wins: json["wins"] == null ? null : json["wins"],
        kills: json["kills"] == null ? null : json["kills"],
        deaths: json["deaths"] == null ? null : json["deaths"],
        bountyKills: json["bounty_kills"] == null ? null : json["bounty_kills"],
      );

  Map<String, dynamic> toJson() => {
        "wins": wins == null ? null : wins,
        "kills": kills == null ? null : kills,
        "deaths": deaths == null ? null : deaths,
        "bounty_kills": bountyKills == null ? null : bountyKills,
      };
}

class CreeperAttack {
  CreeperAttack({
    this.bestWave,
  });

  dynamic bestWave;

  factory CreeperAttack.fromJson(Map<String, dynamic> json) => CreeperAttack(
        bestWave: json["best_wave"] == null ? null : json["best_wave"],
      );

  Map<String, dynamic> toJson() => {
        "best_wave": bestWave == null ? null : bestWave,
      };
}

class Dragonwars {
  Dragonwars({
    this.wins,
    this.kills,
  });

  dynamic wins;
  dynamic kills;

  factory Dragonwars.fromJson(Map<String, dynamic> json) => Dragonwars(
        wins: json["wins"] == null ? null : json["wins"],
        kills: json["kills"] == null ? null : json["kills"],
      );

  Map<String, dynamic> toJson() => {
        "wins": wins == null ? null : wins,
        "kills": kills == null ? null : kills,
      };
}

class FarmHunt {
  FarmHunt({
    this.wins,
    this.poopCollected,
  });

  dynamic wins;
  dynamic poopCollected;

  factory FarmHunt.fromJson(Map<String, dynamic> json) => FarmHunt(
        wins: json["wins"] == null ? null : json["wins"],
        poopCollected:
            json["poop_collected"] == null ? null : json["poop_collected"],
      );

  Map<String, dynamic> toJson() => {
        "wins": wins == null ? null : wins,
        "poop_collected": poopCollected == null ? null : poopCollected,
      };
}

class Football {
  Football({
    this.wins,
    this.goals,
    this.powerkicks,
  });

  dynamic wins;
  dynamic goals;
  dynamic powerkicks;

  factory Football.fromJson(Map<String, dynamic> json) => Football(
        wins: json["wins"] == null ? null : json["wins"],
        goals: json["goals"] == null ? null : json["goals"],
        powerkicks: json["powerkicks"] == null ? null : json["powerkicks"],
      );

  Map<String, dynamic> toJson() => {
        "wins": wins == null ? null : wins,
        "goals": goals == null ? null : goals,
        "powerkicks": powerkicks == null ? null : powerkicks,
      };
}

class GalaxyWars {
  GalaxyWars({
    this.wins,
    this.kills,
    this.deaths,
    this.rebelKills,
    this.shotsFired,
  });

  dynamic wins;
  dynamic kills;
  dynamic deaths;
  dynamic rebelKills;
  dynamic shotsFired;

  factory GalaxyWars.fromJson(Map<String, dynamic> json) => GalaxyWars(
        wins: json["wins"] == null ? null : json["wins"],
        kills: json["kills"] == null ? null : json["kills"],
        deaths: json["deaths"] == null ? null : json["deaths"],
        rebelKills: json["rebel_kills"] == null ? null : json["rebel_kills"],
        shotsFired: json["shots_fired"] == null ? null : json["shots_fired"],
      );

  Map<String, dynamic> toJson() => {
        "wins": wins == null ? null : wins,
        "kills": kills == null ? null : kills,
        "deaths": deaths == null ? null : deaths,
        "rebel_kills": rebelKills == null ? null : rebelKills,
        "shots_fired": shotsFired == null ? null : shotsFired,
      };
}

class HoleInTheWall {
  HoleInTheWall({
    this.wins,
    this.rounds,
    this.highestScoreQualification,
    this.highestScoreFinals,
  });

  dynamic wins;
  dynamic rounds;
  dynamic highestScoreQualification;
  dynamic highestScoreFinals;

  factory HoleInTheWall.fromJson(Map<String, dynamic> json) => HoleInTheWall(
        wins: json["wins"] == null ? null : json["wins"],
        rounds: json["rounds"] == null ? null : json["rounds"],
        highestScoreQualification: json["highest_score_qualification"] == null
            ? null
            : json["highest_score_qualification"],
        highestScoreFinals: json["highest_score_finals"] == null
            ? null
            : json["highest_score_finals"],
      );

  Map<String, dynamic> toJson() => {
        "wins": wins == null ? null : wins,
        "rounds": rounds == null ? null : rounds,
        "highest_score_qualification": highestScoreQualification == null
            ? null
            : highestScoreQualification,
        "highest_score_finals":
            highestScoreFinals == null ? null : highestScoreFinals,
      };
}

class Says {
  Says({
    this.wins,
    this.rounds,
  });

  dynamic wins;
  dynamic rounds;

  factory Says.fromJson(Map<String, dynamic> json) => Says(
        wins: json["wins"] == null ? null : json["wins"],
        rounds: json["rounds"] == null ? null : json["rounds"],
      );

  Map<String, dynamic> toJson() => {
        "wins": wins == null ? null : wins,
        "rounds": rounds == null ? null : rounds,
      };
}

class Miniwalls {
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

  dynamic wins;
  dynamic kills;
  dynamic deaths;
  dynamic finalKills;
  dynamic arrowsShot;
  dynamic arrowsHit;
  dynamic witherDamage;
  dynamic witherKills;
  String kit;

  factory Miniwalls.fromJson(Map<String, dynamic> json) => Miniwalls(
        wins: json["wins"] == null ? null : json["wins"],
        kills: json["kills"] == null ? null : json["kills"],
        deaths: json["deaths"] == null ? null : json["deaths"],
        finalKills: json["final_kills"] == null ? null : json["final_kills"],
        arrowsShot: json["arrows_shot"] == null ? null : json["arrows_shot"],
        arrowsHit: json["arrows_hit"] == null ? null : json["arrows_hit"],
        witherDamage:
            json["wither_damage"] == null ? null : json["wither_damage"],
        witherKills: json["wither_kills"] == null ? null : json["wither_kills"],
        kit: json["kit"] == null ? null : json["kit"],
      );

  Map<String, dynamic> toJson() => {
        "wins": wins == null ? null : wins,
        "kills": kills == null ? null : kills,
        "deaths": deaths == null ? null : deaths,
        "final_kills": finalKills == null ? null : finalKills,
        "arrows_shot": arrowsShot == null ? null : arrowsShot,
        "arrows_hit": arrowsHit == null ? null : arrowsHit,
        "wither_damage": witherDamage == null ? null : witherDamage,
        "wither_kills": witherKills == null ? null : witherKills,
        "kit": kit == null ? null : kit,
      };
}

class PartyGames {
  PartyGames({
    this.wins1,
    this.wins2,
    this.wins3,
  });

  dynamic wins1;
  dynamic wins2;
  dynamic wins3;

  factory PartyGames.fromJson(Map<String, dynamic> json) => PartyGames(
        wins1: json["wins_1"] == null ? null : json["wins_1"],
        wins2: json["wins_2"] == null ? null : json["wins_2"],
        wins3: json["wins_3"] == null ? null : json["wins_3"],
      );

  Map<String, dynamic> toJson() => {
        "wins_1": wins1 == null ? null : wins1,
        "wins_2": wins2 == null ? null : wins2,
        "wins_3": wins3 == null ? null : wins3,
      };
}

class Zombies {
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

  dynamic wins;
  dynamic zombieKills;
  dynamic deaths;
  dynamic totalRoundsSurvived;
  dynamic bulletsHit;
  dynamic headshots;
  dynamic playersRevived;
  dynamic windowsRepaired;
  dynamic doorsOpened;
  dynamic bestRound;

  factory Zombies.fromJson(Map<String, dynamic> json) => Zombies(
        wins: json["wins"] == null ? null : json["wins"],
        zombieKills: json["zombie_kills"] == null ? null : json["zombie_kills"],
        deaths: json["deaths"] == null ? null : json["deaths"],
        totalRoundsSurvived: json["total_rounds_survived"] == null
            ? null
            : json["total_rounds_survived"],
        bulletsHit: json["bullets_hit"] == null ? null : json["bullets_hit"],
        headshots: json["headshots"] == null ? null : json["headshots"],
        playersRevived:
            json["players_revived"] == null ? null : json["players_revived"],
        windowsRepaired:
            json["windows_repaired"] == null ? null : json["windows_repaired"],
        doorsOpened: json["doors_opened"] == null ? null : json["doors_opened"],
        bestRound: json["best_round"] == null ? null : json["best_round"],
      );

  Map<String, dynamic> toJson() => {
        "wins": wins == null ? null : wins,
        "zombie_kills": zombieKills == null ? null : zombieKills,
        "deaths": deaths == null ? null : deaths,
        "total_rounds_survived":
            totalRoundsSurvived == null ? null : totalRoundsSurvived,
        "bullets_hit": bulletsHit == null ? null : bulletsHit,
        "headshots": headshots == null ? null : headshots,
        "players_revived": playersRevived == null ? null : playersRevived,
        "windows_repaired": windowsRepaired == null ? null : windowsRepaired,
        "doors_opened": doorsOpened == null ? null : doorsOpened,
        "best_round": bestRound == null ? null : bestRound,
      };
}

class Arena {
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

  dynamic coins;
  dynamic coinsSpent;
  String hat;
  dynamic penalty;
  dynamic magicalChest;
  dynamic keys;
  String selectedSword;
  String activeRune;
  Skills skills;
  CombatLevels combatLevels;
  RuneLevels runeLevels;
  ArenaGamemodes gamemodes;

  factory Arena.fromJson(Map<String, dynamic> json) => Arena(
        coins: json["coins"] == null ? null : json["coins"],
        coinsSpent: json["coins_spent"] == null ? null : json["coins_spent"],
        hat: json["hat"] == null ? null : json["hat"],
        penalty: json["penalty"] == null ? null : json["penalty"],
        magicalChest:
            json["magical_chest"] == null ? null : json["magical_chest"],
        keys: json["keys"] == null ? null : json["keys"],
        selectedSword:
            json["selected_sword"] == null ? null : json["selected_sword"],
        activeRune: json["active_rune"] == null ? null : json["active_rune"],
        skills: json["skills"] == null ? null : Skills.fromJson(json["skills"]),
        combatLevels: json["combat_levels"] == null
            ? null
            : CombatLevels.fromJson(json["combat_levels"]),
        runeLevels: json["rune_levels"] == null
            ? null
            : RuneLevels.fromJson(json["rune_levels"]),
        gamemodes: json["gamemodes"] == null
            ? null
            : ArenaGamemodes.fromJson(json["gamemodes"]),
      );

  Map<String, dynamic> toJson() => {
        "coins": coins == null ? null : coins,
        "coins_spent": coinsSpent == null ? null : coinsSpent,
        "hat": hat == null ? null : hat,
        "penalty": penalty == null ? null : penalty,
        "magical_chest": magicalChest == null ? null : magicalChest,
        "keys": keys == null ? null : keys,
        "selected_sword": selectedSword == null ? null : selectedSword,
        "active_rune": activeRune == null ? null : activeRune,
        "skills": skills == null ? null : skills.toJson(),
        "combat_levels": combatLevels == null ? null : combatLevels.toJson(),
        "rune_levels": runeLevels == null ? null : runeLevels.toJson(),
        "gamemodes": gamemodes == null ? null : gamemodes.toJson(),
      };
}

class CombatLevels {
  CombatLevels({
    this.melee,
    this.health,
    this.energy,
    this.cooldown,
  });

  dynamic melee;
  dynamic health;
  dynamic energy;
  dynamic cooldown;

  factory CombatLevels.fromJson(Map<String, dynamic> json) => CombatLevels(
        melee: json["melee"] == null ? null : json["melee"],
        health: json["health"] == null ? null : json["health"],
        energy: json["energy"] == null ? null : json["energy"],
        cooldown: json["cooldown"] == null ? null : json["cooldown"],
      );

  Map<String, dynamic> toJson() => {
        "melee": melee == null ? null : melee,
        "health": health == null ? null : health,
        "energy": energy == null ? null : energy,
        "cooldown": cooldown == null ? null : cooldown,
      };
}

class ArenaGamemodes {
  ArenaGamemodes({
    this.oneVOne,
    this.twoVTwo,
    this.fourVFour,
  });

  FourVFour oneVOne;
  FourVFour twoVTwo;
  FourVFour fourVFour;

  factory ArenaGamemodes.fromJson(Map<String, dynamic> json) => ArenaGamemodes(
        oneVOne: json["one_v_one"] == null
            ? null
            : FourVFour.fromJson(json["one_v_one"]),
        twoVTwo: json["two_v_two"] == null
            ? null
            : FourVFour.fromJson(json["two_v_two"]),
        fourVFour: json["four_v_four"] == null
            ? null
            : FourVFour.fromJson(json["four_v_four"]),
      );

  Map<String, dynamic> toJson() => {
        "one_v_one": oneVOne == null ? null : oneVOne.toJson(),
        "two_v_two": twoVTwo == null ? null : twoVTwo.toJson(),
        "four_v_four": fourVFour == null ? null : fourVFour.toJson(),
      };
}

class FourVFour {
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

  dynamic damage;
  dynamic kills;
  dynamic deaths;
  dynamic losses;
  dynamic wins;
  dynamic winStreaks;
  dynamic games;
  dynamic healed;
  dynamic kd;
  dynamic winLoss;
  dynamic winPercentage;

  factory FourVFour.fromJson(Map<String, dynamic> json) => FourVFour(
        damage: json["damage"] == null ? null : json["damage"],
        kills: json["kills"] == null ? null : json["kills"],
        deaths: json["deaths"] == null ? null : json["deaths"],
        losses: json["losses"] == null ? null : json["losses"],
        wins: json["wins"] == null ? null : json["wins"],
        winStreaks: json["win_streaks"] == null ? null : json["win_streaks"],
        games: json["games"] == null ? null : json["games"],
        healed: json["healed"] == null ? null : json["healed"],
        kd: json["kd"] == null ? null : json["kd"],
        winLoss: json["win_loss"] == null ? null : json["win_loss"],
        winPercentage:
            json["win_percentage"] == null ? null : json["win_percentage"],
      );

  Map<String, dynamic> toJson() => {
        "damage": damage == null ? null : damage,
        "kills": kills == null ? null : kills,
        "deaths": deaths == null ? null : deaths,
        "losses": losses == null ? null : losses,
        "wins": wins == null ? null : wins,
        "win_streaks": winStreaks == null ? null : winStreaks,
        "games": games == null ? null : games,
        "healed": healed == null ? null : healed,
        "kd": kd == null ? null : kd,
        "win_loss": winLoss == null ? null : winLoss,
        "win_percentage": winPercentage == null ? null : winPercentage,
      };
}

class RuneLevels {
  RuneLevels({
    this.damage,
    this.energy,
    this.slowing,
    this.speed,
  });

  dynamic damage;
  dynamic energy;
  dynamic slowing;
  dynamic speed;

  factory RuneLevels.fromJson(Map<String, dynamic> json) => RuneLevels(
        damage: json["damage"] == null ? null : json["damage"],
        energy: json["energy"] == null ? null : json["energy"],
        slowing: json["slowing"] == null ? null : json["slowing"],
        speed: json["speed"] == null ? null : json["speed"],
      );

  Map<String, dynamic> toJson() => {
        "damage": damage == null ? null : damage,
        "energy": energy == null ? null : energy,
        "slowing": slowing == null ? null : slowing,
        "speed": speed == null ? null : speed,
      };
}

class Skills {
  Skills({
    this.offensive,
    this.support,
    this.utility,
    this.ultimate,
  });

  String offensive;
  String support;
  String utility;
  String ultimate;

  factory Skills.fromJson(Map<String, dynamic> json) => Skills(
        offensive: json["offensive"] == null ? null : json["offensive"],
        support: json["support"] == null ? null : json["support"],
        utility: json["utility"] == null ? null : json["utility"],
        ultimate: json["ultimate"] == null ? null : json["ultimate"],
      );

  Map<String, dynamic> toJson() => {
        "offensive": offensive == null ? null : offensive,
        "support": support == null ? null : support,
        "utility": utility == null ? null : utility,
        "ultimate": ultimate == null ? null : ultimate,
      };
}

class BedWars {
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

  dynamic coins;
  dynamic exp;
  dynamic level;
  dynamic wins;
  dynamic losses;
  dynamic gamesPlayed;
  dynamic kills;
  dynamic deaths;
  dynamic kD;
  dynamic wL;
  dynamic bedsBroken;
  dynamic bedsLost;
  dynamic bedRatio;
  dynamic finalKills;
  dynamic finalDeaths;
  dynamic finalKD;
  dynamic voidKills;
  dynamic voidDeaths;
  dynamic winstreak;
  Boxes boxes;
  ResourcesCollected resourcesCollected;
  InventoriesClass gamemodes;

  factory BedWars.fromJson(Map<String, dynamic> json) => BedWars(
        coins: json["coins"] == null ? null : json["coins"],
        exp: json["exp"] == null ? null : json["exp"],
        level: json["level"] == null ? null : json["level"],
        wins: json["wins"] == null ? null : json["wins"],
        losses: json["losses"] == null ? null : json["losses"],
        gamesPlayed: json["games_played"] == null ? null : json["games_played"],
        kills: json["kills"] == null ? null : json["kills"],
        deaths: json["deaths"] == null ? null : json["deaths"],
        kD: json["k_d"] == null ? null : json["k_d"],
        wL: json["w_l"] == null ? null : json["w_l"],
        bedsBroken: json["beds_broken"] == null ? null : json["beds_broken"],
        bedsLost: json["beds_lost"] == null ? null : json["beds_lost"],
        bedRatio: json["bed_ratio"] == null ? null : json["bed_ratio"],
        finalKills: json["final_kills"] == null ? null : json["final_kills"],
        finalDeaths: json["final_deaths"] == null ? null : json["final_deaths"],
        finalKD: json["final_k_d"] == null ? null : json["final_k_d"],
        voidKills: json["void_kills"] == null ? null : json["void_kills"],
        voidDeaths: json["void_deaths"] == null ? null : json["void_deaths"],
        winstreak: json["winstreak"] == null ? null : json["winstreak"],
        boxes: json["boxes"] == null ? null : Boxes.fromJson(json["boxes"]),
        resourcesCollected: json["resources_collected"] == null
            ? null
            : ResourcesCollected.fromJson(json["resources_collected"]),
        gamemodes: json["gamemodes"] == null
            ? null
            : InventoriesClass.fromJson(json["gamemodes"]),
      );

  Map<String, dynamic> toJson() => {
        "coins": coins == null ? null : coins,
        "exp": exp == null ? null : exp,
        "level": level == null ? null : level,
        "wins": wins == null ? null : wins,
        "losses": losses == null ? null : losses,
        "games_played": gamesPlayed == null ? null : gamesPlayed,
        "kills": kills == null ? null : kills,
        "deaths": deaths == null ? null : deaths,
        "k_d": kD == null ? null : kD,
        "w_l": wL == null ? null : wL,
        "beds_broken": bedsBroken == null ? null : bedsBroken,
        "beds_lost": bedsLost == null ? null : bedsLost,
        "bed_ratio": bedRatio == null ? null : bedRatio,
        "final_kills": finalKills == null ? null : finalKills,
        "final_deaths": finalDeaths == null ? null : finalDeaths,
        "final_k_d": finalKD == null ? null : finalKD,
        "void_kills": voidKills == null ? null : voidKills,
        "void_deaths": voidDeaths == null ? null : voidDeaths,
        "winstreak": winstreak == null ? null : winstreak,
        "boxes": boxes == null ? null : boxes.toJson(),
        "resources_collected":
            resourcesCollected == null ? null : resourcesCollected.toJson(),
        "gamemodes": gamemodes == null ? null : gamemodes.toJson(),
      };
}

class Boxes {
  Boxes({
    this.current,
    this.opened,
    this.commons,
    this.rares,
    this.epics,
    this.legendaries,
  });

  dynamic current;
  dynamic opened;
  dynamic commons;
  dynamic rares;
  dynamic epics;
  dynamic legendaries;

  factory Boxes.fromJson(Map<String, dynamic> json) => Boxes(
        current: json["current"] == null ? null : json["current"],
        opened: json["opened"] == null ? null : json["opened"],
        commons: json["commons"] == null ? null : json["commons"],
        rares: json["rares"] == null ? null : json["rares"],
        epics: json["epics"] == null ? null : json["epics"],
        legendaries: json["legendaries"] == null ? null : json["legendaries"],
      );

  Map<String, dynamic> toJson() => {
        "current": current == null ? null : current,
        "opened": opened == null ? null : opened,
        "commons": commons == null ? null : commons,
        "rares": rares == null ? null : rares,
        "epics": epics == null ? null : epics,
        "legendaries": legendaries == null ? null : legendaries,
      };
}

class InventoriesClass {
  InventoriesClass();

  factory InventoriesClass.fromJson(Map<String, dynamic> json) =>
      InventoriesClass();

  Map<String, dynamic> toJson() => {};
}

class ResourcesCollected {
  ResourcesCollected({
    this.iron,
    this.gold,
    this.diamond,
    this.emerald,
  });

  dynamic iron;
  dynamic gold;
  dynamic diamond;
  dynamic emerald;

  factory ResourcesCollected.fromJson(Map<String, dynamic> json) =>
      ResourcesCollected(
        iron: json["iron"] == null ? null : json["iron"],
        gold: json["gold"] == null ? null : json["gold"],
        diamond: json["diamond"] == null ? null : json["diamond"],
        emerald: json["emerald"] == null ? null : json["emerald"],
      );

  Map<String, dynamic> toJson() => {
        "iron": iron == null ? null : iron,
        "gold": gold == null ? null : gold,
        "diamond": diamond == null ? null : diamond,
        "emerald": emerald == null ? null : emerald,
      };
}

class Blitz {
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

  dynamic coins;
  dynamic deaths;
  dynamic kills;
  dynamic kD;
  dynamic wins;
  dynamic teamWins;
  dynamic winLoss;
  dynamic winPercentage;
  dynamic weeklyKills;
  dynamic monthlyKills;
  dynamic ramboWins;
  dynamic randomWins;
  dynamic damageTaken;
  dynamic tauntKills;
  dynamic potionsDrunk;
  dynamic damage;
  dynamic mobsSpawned;
  dynamic timePlayed;
  dynamic arrowsHit;
  dynamic gamesPlayed;
  dynamic potionsThrown;
  dynamic arrowsFired;
  dynamic blitzUses;
  dynamic chestsOpened;
  InventoriesClass kitsLevels;
  InventoriesClass kitStats;
  Equipped equipped;
  Settings settings;
  InventoriesClass inventories;

  factory Blitz.fromJson(Map<String, dynamic> json) => Blitz(
        coins: json["coins"] == null ? null : json["coins"],
        deaths: json["deaths"] == null ? null : json["deaths"],
        kills: json["kills"] == null ? null : json["kills"],
        kD: json["k_d"] == null ? null : json["k_d"],
        wins: json["wins"] == null ? null : json["wins"],
        teamWins: json["team_wins"] == null ? null : json["team_wins"],
        winLoss: json["win_loss"] == null ? null : json["win_loss"],
        winPercentage:
            json["win_percentage"] == null ? null : json["win_percentage"],
        weeklyKills: json["weekly_kills"] == null ? null : json["weekly_kills"],
        monthlyKills:
            json["monthly_kills"] == null ? null : json["monthly_kills"],
        ramboWins: json["rambo_wins"] == null ? null : json["rambo_wins"],
        randomWins: json["random_wins"] == null ? null : json["random_wins"],
        damageTaken: json["damage_taken"] == null ? null : json["damage_taken"],
        tauntKills: json["taunt_kills"] == null ? null : json["taunt_kills"],
        potionsDrunk:
            json["potions_drunk"] == null ? null : json["potions_drunk"],
        damage: json["damage"] == null ? null : json["damage"],
        mobsSpawned: json["mobs_spawned"] == null ? null : json["mobs_spawned"],
        timePlayed: json["time_played"] == null ? null : json["time_played"],
        arrowsHit: json["arrows_hit"] == null ? null : json["arrows_hit"],
        gamesPlayed: json["games_played"] == null ? null : json["games_played"],
        potionsThrown:
            json["potions_thrown"] == null ? null : json["potions_thrown"],
        arrowsFired: json["arrows_fired"] == null ? null : json["arrows_fired"],
        blitzUses: json["blitz_uses"] == null ? null : json["blitz_uses"],
        chestsOpened:
            json["chests_opened"] == null ? null : json["chests_opened"],
        kitsLevels: json["kits_levels"] == null
            ? null
            : InventoriesClass.fromJson(json["kits_levels"]),
        kitStats: json["kit_stats"] == null
            ? null
            : InventoriesClass.fromJson(json["kit_stats"]),
        equipped: json["equipped"] == null
            ? null
            : Equipped.fromJson(json["equipped"]),
        settings: json["settings"] == null
            ? null
            : Settings.fromJson(json["settings"]),
        inventories: json["inventories"] == null
            ? null
            : InventoriesClass.fromJson(json["inventories"]),
      );

  Map<String, dynamic> toJson() => {
        "coins": coins == null ? null : coins,
        "deaths": deaths == null ? null : deaths,
        "kills": kills == null ? null : kills,
        "k_d": kD == null ? null : kD,
        "wins": wins == null ? null : wins,
        "team_wins": teamWins == null ? null : teamWins,
        "win_loss": winLoss == null ? null : winLoss,
        "win_percentage": winPercentage == null ? null : winPercentage,
        "weekly_kills": weeklyKills == null ? null : weeklyKills,
        "monthly_kills": monthlyKills == null ? null : monthlyKills,
        "rambo_wins": ramboWins == null ? null : ramboWins,
        "random_wins": randomWins == null ? null : randomWins,
        "damage_taken": damageTaken == null ? null : damageTaken,
        "taunt_kills": tauntKills == null ? null : tauntKills,
        "potions_drunk": potionsDrunk == null ? null : potionsDrunk,
        "damage": damage == null ? null : damage,
        "mobs_spawned": mobsSpawned == null ? null : mobsSpawned,
        "time_played": timePlayed == null ? null : timePlayed,
        "arrows_hit": arrowsHit == null ? null : arrowsHit,
        "games_played": gamesPlayed == null ? null : gamesPlayed,
        "potions_thrown": potionsThrown == null ? null : potionsThrown,
        "arrows_fired": arrowsFired == null ? null : arrowsFired,
        "blitz_uses": blitzUses == null ? null : blitzUses,
        "chests_opened": chestsOpened == null ? null : chestsOpened,
        "kits_levels": kitsLevels == null ? null : kitsLevels.toJson(),
        "kit_stats": kitStats == null ? null : kitStats.toJson(),
        "equipped": equipped == null ? null : equipped.toJson(),
        "settings": settings == null ? null : settings.toJson(),
        "inventories": inventories == null ? null : inventories.toJson(),
      };
}

class Equipped {
  Equipped({
    this.aura,
    this.taunt,
    this.victoryDance,
    this.finisher,
  });

  String aura;
  String taunt;
  String victoryDance;
  String finisher;

  factory Equipped.fromJson(Map<String, dynamic> json) => Equipped(
        aura: json["aura"] == null ? null : json["aura"],
        taunt: json["taunt"] == null ? null : json["taunt"],
        victoryDance:
            json["victory_dance"] == null ? null : json["victory_dance"],
        finisher: json["finisher"] == null ? null : json["finisher"],
      );

  Map<String, dynamic> toJson() => {
        "aura": aura == null ? null : aura,
        "taunt": taunt == null ? null : taunt,
        "victory_dance": victoryDance == null ? null : victoryDance,
        "finisher": finisher == null ? null : finisher,
      };
}

class Settings {
  Settings({
    this.defaultKit,
    this.autoArmor,
  });

  String defaultKit;
  bool autoArmor;

  factory Settings.fromJson(Map<String, dynamic> json) => Settings(
        defaultKit: json["default_kit"] == null ? null : json["default_kit"],
        autoArmor: json["auto_armor"] == null ? null : json["auto_armor"],
      );

  Map<String, dynamic> toJson() => {
        "default_kit": defaultKit == null ? null : defaultKit,
        "auto_armor": autoArmor == null ? null : autoArmor,
      };
}

class BuildBattle {
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

  dynamic coins;
  dynamic score;
  dynamic wins;
  dynamic wR;
  dynamic totalVotes;
  dynamic winsSoloNormal;
  dynamic winsSoloPro;
  dynamic winsTeamsNormal;
  dynamic winsGuessTheBuild;
  dynamic correctGuesses;
  dynamic gamesPlayed;
  dynamic superVotes;
  List<String> loadout;
  String selectedHat;
  String selectedVictoryDance;
  String selectedSuit;
  String selectedMovementTrail;
  String selectedBackdrop;
  InventoriesClass themeRatings;

  factory BuildBattle.fromJson(Map<String, dynamic> json) => BuildBattle(
        coins: json["coins"] == null ? null : json["coins"],
        score: json["score"] == null ? null : json["score"],
        wins: json["wins"] == null ? null : json["wins"],
        wR: json["w_r"] == null ? null : json["w_r"],
        totalVotes: json["total_votes"] == null ? null : json["total_votes"],
        winsSoloNormal:
            json["wins_solo_normal"] == null ? null : json["wins_solo_normal"],
        winsSoloPro:
            json["wins_solo_pro"] == null ? null : json["wins_solo_pro"],
        winsTeamsNormal: json["wins_teams_normal"] == null
            ? null
            : json["wins_teams_normal"],
        winsGuessTheBuild: json["wins_guess_the_build"] == null
            ? null
            : json["wins_guess_the_build"],
        correctGuesses:
            json["correct_guesses"] == null ? null : json["correct_guesses"],
        gamesPlayed: json["games_played"] == null ? null : json["games_played"],
        superVotes: json["super_votes"] == null ? null : json["super_votes"],
        loadout: json["loadout"] == null
            ? null
            : List<String>.from(json["loadout"].map((x) => x)),
        selectedHat: json["selected_hat"] == null ? null : json["selected_hat"],
        selectedVictoryDance: json["selected_victory_dance"] == null
            ? null
            : json["selected_victory_dance"],
        selectedSuit:
            json["selected_suit"] == null ? null : json["selected_suit"],
        selectedMovementTrail: json["selected_movement_trail"] == null
            ? null
            : json["selected_movement_trail"],
        selectedBackdrop: json["selected_backdrop"] == null
            ? null
            : json["selected_backdrop"],
        themeRatings: json["themeRatings"] == null
            ? null
            : InventoriesClass.fromJson(json["themeRatings"]),
      );

  Map<String, dynamic> toJson() => {
        "coins": coins == null ? null : coins,
        "score": score == null ? null : score,
        "wins": wins == null ? null : wins,
        "w_r": wR == null ? null : wR,
        "total_votes": totalVotes == null ? null : totalVotes,
        "wins_solo_normal": winsSoloNormal == null ? null : winsSoloNormal,
        "wins_solo_pro": winsSoloPro == null ? null : winsSoloPro,
        "wins_teams_normal": winsTeamsNormal == null ? null : winsTeamsNormal,
        "wins_guess_the_build":
            winsGuessTheBuild == null ? null : winsGuessTheBuild,
        "correct_guesses": correctGuesses == null ? null : correctGuesses,
        "games_played": gamesPlayed == null ? null : gamesPlayed,
        "super_votes": superVotes == null ? null : superVotes,
        "loadout":
            loadout == null ? null : List<dynamic>.from(loadout.map((x) => x)),
        "selected_hat": selectedHat == null ? null : selectedHat,
        "selected_victory_dance":
            selectedVictoryDance == null ? null : selectedVictoryDance,
        "selected_suit": selectedSuit == null ? null : selectedSuit,
        "selected_movement_trail":
            selectedMovementTrail == null ? null : selectedMovementTrail,
        "selected_backdrop": selectedBackdrop == null ? null : selectedBackdrop,
        "themeRatings": themeRatings == null ? null : themeRatings.toJson(),
      };
}

class CvC {
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

  dynamic coins;
  dynamic deaths;
  dynamic kills;
  dynamic kd;
  dynamic wins;
  dynamic copKills;
  dynamic criminalKills;
  dynamic weeklyKills;
  dynamic monthlyKills;
  dynamic bombsPlanted;
  dynamic bombsDefused;
  dynamic grenadeKills;
  dynamic headshotKills;
  dynamic roundWins;
  String selectedLobbyPrefix;
  dynamic shotsFired;
  bool showLobbyPrefix;
  MapWins mapWins;
  Deathmatch deathmatch;
  Perks perks;
  SelectedCosmetics selectedCosmetics;

  factory CvC.fromJson(Map<String, dynamic> json) => CvC(
        coins: json["coins"] == null ? null : json["coins"],
        deaths: json["deaths"] == null ? null : json["deaths"],
        kills: json["kills"] == null ? null : json["kills"],
        kd: json["kd"] == null ? null : json["kd"],
        wins: json["wins"] == null ? null : json["wins"],
        copKills: json["cop_kills"] == null ? null : json["cop_kills"],
        criminalKills:
            json["criminal_kills"] == null ? null : json["criminal_kills"],
        weeklyKills: json["weekly_kills"] == null ? null : json["weekly_kills"],
        monthlyKills:
            json["monthly_kills"] == null ? null : json["monthly_kills"],
        bombsPlanted:
            json["bombs_planted"] == null ? null : json["bombs_planted"],
        bombsDefused:
            json["bombs_defused"] == null ? null : json["bombs_defused"],
        grenadeKills:
            json["grenade_kills"] == null ? null : json["grenade_kills"],
        headshotKills:
            json["headshot_kills"] == null ? null : json["headshot_kills"],
        roundWins: json["round_wins"] == null ? null : json["round_wins"],
        selectedLobbyPrefix: json["selected_lobby_prefix"] == null
            ? null
            : json["selected_lobby_prefix"],
        shotsFired: json["shots_fired"] == null ? null : json["shots_fired"],
        showLobbyPrefix: json["show_lobby_prefix"] == null
            ? null
            : json["show_lobby_prefix"],
        mapWins: json["map_wins"] == null
            ? null
            : MapWins.fromJson(json["map_wins"]),
        deathmatch: json["deathmatch"] == null
            ? null
            : Deathmatch.fromJson(json["deathmatch"]),
        perks: json["perks"] == null ? null : Perks.fromJson(json["perks"]),
        selectedCosmetics: json["selected_cosmetics"] == null
            ? null
            : SelectedCosmetics.fromJson(json["selected_cosmetics"]),
      );

  Map<String, dynamic> toJson() => {
        "coins": coins == null ? null : coins,
        "deaths": deaths == null ? null : deaths,
        "kills": kills == null ? null : kills,
        "kd": kd == null ? null : kd,
        "wins": wins == null ? null : wins,
        "cop_kills": copKills == null ? null : copKills,
        "criminal_kills": criminalKills == null ? null : criminalKills,
        "weekly_kills": weeklyKills == null ? null : weeklyKills,
        "monthly_kills": monthlyKills == null ? null : monthlyKills,
        "bombs_planted": bombsPlanted == null ? null : bombsPlanted,
        "bombs_defused": bombsDefused == null ? null : bombsDefused,
        "grenade_kills": grenadeKills == null ? null : grenadeKills,
        "headshot_kills": headshotKills == null ? null : headshotKills,
        "round_wins": roundWins == null ? null : roundWins,
        "selected_lobby_prefix":
            selectedLobbyPrefix == null ? null : selectedLobbyPrefix,
        "shots_fired": shotsFired == null ? null : shotsFired,
        "show_lobby_prefix": showLobbyPrefix == null ? null : showLobbyPrefix,
        "map_wins": mapWins == null ? null : mapWins.toJson(),
        "deathmatch": deathmatch == null ? null : deathmatch.toJson(),
        "perks": perks == null ? null : perks.toJson(),
        "selected_cosmetics":
            selectedCosmetics == null ? null : selectedCosmetics.toJson(),
      };
}

class Deathmatch {
  Deathmatch({
    this.kills,
    this.deaths,
    this.kd,
    this.wins,
    this.copKills,
    this.criminalKills,
  });

  dynamic kills;
  dynamic deaths;
  dynamic kd;
  dynamic wins;
  dynamic copKills;
  dynamic criminalKills;

  factory Deathmatch.fromJson(Map<String, dynamic> json) => Deathmatch(
        kills: json["kills"] == null ? null : json["kills"],
        deaths: json["deaths"] == null ? null : json["deaths"],
        kd: json["kd"] == null ? null : json["kd"],
        wins: json["wins"] == null ? null : json["wins"],
        copKills: json["cop_kills"] == null ? null : json["cop_kills"],
        criminalKills:
            json["criminal_kills"] == null ? null : json["criminal_kills"],
      );

  Map<String, dynamic> toJson() => {
        "kills": kills == null ? null : kills,
        "deaths": deaths == null ? null : deaths,
        "kd": kd == null ? null : kd,
        "wins": wins == null ? null : wins,
        "cop_kills": copKills == null ? null : copKills,
        "criminal_kills": criminalKills == null ? null : criminalKills,
      };
}

class MapWins {
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

  dynamic alleyway;
  dynamic atomic;
  dynamic carrier;
  dynamic melonFactory;
  dynamic overgrown;
  dynamic reserve;
  dynamic sandstorm;
  dynamic temple;

  factory MapWins.fromJson(Map<String, dynamic> json) => MapWins(
        alleyway: json["alleyway"] == null ? null : json["alleyway"],
        atomic: json["atomic"] == null ? null : json["atomic"],
        carrier: json["carrier"] == null ? null : json["carrier"],
        melonFactory:
            json["melon_factory"] == null ? null : json["melon_factory"],
        overgrown: json["overgrown"] == null ? null : json["overgrown"],
        reserve: json["reserve"] == null ? null : json["reserve"],
        sandstorm: json["sandstorm"] == null ? null : json["sandstorm"],
        temple: json["temple"] == null ? null : json["temple"],
      );

  Map<String, dynamic> toJson() => {
        "alleyway": alleyway == null ? null : alleyway,
        "atomic": atomic == null ? null : atomic,
        "carrier": carrier == null ? null : carrier,
        "melon_factory": melonFactory == null ? null : melonFactory,
        "overgrown": overgrown == null ? null : overgrown,
        "reserve": reserve == null ? null : reserve,
        "sandstorm": sandstorm == null ? null : sandstorm,
        "temple": temple == null ? null : temple,
      };
}

class Perks {
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

  PlayerClass player;
  Carbine carbine;
  Knife knife;
  Carbine magnum;
  Carbine pistol;
  Carbine rifle;
  Carbine shotgun;
  Carbine smg;
  Carbine sniper;

  factory Perks.fromJson(Map<String, dynamic> json) => Perks(
        player: json["player"] == null
            ? null
            : PlayerClass.fromJson(json["player"]),
        carbine:
            json["carbine"] == null ? null : Carbine.fromJson(json["carbine"]),
        knife: json["knife"] == null ? null : Knife.fromJson(json["knife"]),
        magnum:
            json["magnum"] == null ? null : Carbine.fromJson(json["magnum"]),
        pistol:
            json["pistol"] == null ? null : Carbine.fromJson(json["pistol"]),
        rifle: json["rifle"] == null ? null : Carbine.fromJson(json["rifle"]),
        shotgun:
            json["shotgun"] == null ? null : Carbine.fromJson(json["shotgun"]),
        smg: json["smg"] == null ? null : Carbine.fromJson(json["smg"]),
        sniper:
            json["sniper"] == null ? null : Carbine.fromJson(json["sniper"]),
      );

  Map<String, dynamic> toJson() => {
        "player": player == null ? null : player.toJson(),
        "carbine": carbine == null ? null : carbine.toJson(),
        "knife": knife == null ? null : knife.toJson(),
        "magnum": magnum == null ? null : magnum.toJson(),
        "pistol": pistol == null ? null : pistol.toJson(),
        "rifle": rifle == null ? null : rifle.toJson(),
        "shotgun": shotgun == null ? null : shotgun.toJson(),
        "smg": smg == null ? null : smg.toJson(),
        "sniper": sniper == null ? null : sniper.toJson(),
      };
}

class Carbine {
  Carbine({
    this.costReduction,
    this.damageIncrease,
    this.recoilReduction,
    this.reloadSpeedReduction,
    this.chargeBonus,
  });

  dynamic costReduction;
  dynamic damageIncrease;
  dynamic recoilReduction;
  dynamic reloadSpeedReduction;
  dynamic chargeBonus;

  factory Carbine.fromJson(Map<String, dynamic> json) => Carbine(
        costReduction:
            json["cost_reduction"] == null ? null : json["cost_reduction"],
        damageIncrease:
            json["damage_increase"] == null ? null : json["damage_increase"],
        recoilReduction:
            json["recoil_reduction"] == null ? null : json["recoil_reduction"],
        reloadSpeedReduction: json["reload_speed_reduction"] == null
            ? null
            : json["reload_speed_reduction"],
        chargeBonus: json["charge_bonus"] == null ? null : json["charge_bonus"],
      );

  Map<String, dynamic> toJson() => {
        "cost_reduction": costReduction == null ? null : costReduction,
        "damage_increase": damageIncrease == null ? null : damageIncrease,
        "recoil_reduction": recoilReduction == null ? null : recoilReduction,
        "reload_speed_reduction":
            reloadSpeedReduction == null ? null : reloadSpeedReduction,
        "charge_bonus": chargeBonus == null ? null : chargeBonus,
      };
}

class Knife {
  Knife({
    this.attackDelay,
    this.damageIncrease,
  });

  dynamic attackDelay;
  dynamic damageIncrease;

  factory Knife.fromJson(Map<String, dynamic> json) => Knife(
        attackDelay: json["attack_delay"] == null ? null : json["attack_delay"],
        damageIncrease:
            json["damage_increase"] == null ? null : json["damage_increase"],
      );

  Map<String, dynamic> toJson() => {
        "attack_delay": attackDelay == null ? null : attackDelay,
        "damage_increase": damageIncrease == null ? null : damageIncrease,
      };
}

class PlayerClass {
  PlayerClass({
    this.bodyArmorCost,
    this.bountyHunter,
    this.pocketChange,
    this.strengthTraining,
  });

  dynamic bodyArmorCost;
  dynamic bountyHunter;
  dynamic pocketChange;
  dynamic strengthTraining;

  factory PlayerClass.fromJson(Map<String, dynamic> json) => PlayerClass(
        bodyArmorCost:
            json["body_armor_cost"] == null ? null : json["body_armor_cost"],
        bountyHunter:
            json["bounty_hunter"] == null ? null : json["bounty_hunter"],
        pocketChange:
            json["pocket_change"] == null ? null : json["pocket_change"],
        strengthTraining: json["strength_training"] == null
            ? null
            : json["strength_training"],
      );

  Map<String, dynamic> toJson() => {
        "body_armor_cost": bodyArmorCost == null ? null : bodyArmorCost,
        "bounty_hunter": bountyHunter == null ? null : bountyHunter,
        "pocket_change": pocketChange == null ? null : pocketChange,
        "strength_training": strengthTraining == null ? null : strengthTraining,
      };
}

class SelectedCosmetics {
  SelectedCosmetics({
    this.carbine,
    this.knife,
    this.magnum,
    this.pistol,
    this.rifle,
    this.shotgun,
    this.smg,
  });

  String carbine;
  String knife;
  String magnum;
  String pistol;
  String rifle;
  String shotgun;
  String smg;

  factory SelectedCosmetics.fromJson(Map<String, dynamic> json) =>
      SelectedCosmetics(
        carbine: json["carbine"] == null ? null : json["carbine"],
        knife: json["knife"] == null ? null : json["knife"],
        magnum: json["magnum"] == null ? null : json["magnum"],
        pistol: json["pistol"] == null ? null : json["pistol"],
        rifle: json["rifle"] == null ? null : json["rifle"],
        shotgun: json["shotgun"] == null ? null : json["shotgun"],
        smg: json["smg"] == null ? null : json["smg"],
      );

  Map<String, dynamic> toJson() => {
        "carbine": carbine == null ? null : carbine,
        "knife": knife == null ? null : knife,
        "magnum": magnum == null ? null : magnum,
        "pistol": pistol == null ? null : pistol,
        "rifle": rifle == null ? null : rifle,
        "shotgun": shotgun == null ? null : shotgun,
        "smg": smg == null ? null : smg,
      };
}

class Duels {
  Duels({
    this.coins,
  });

  dynamic coins;

  factory Duels.fromJson(Map<String, dynamic> json) => Duels(
        coins: json["coins"] == null ? null : json["coins"],
      );

  Map<String, dynamic> toJson() => {
        "coins": coins == null ? null : coins,
      };
}

class Pit {
  Pit({
    this.profile,
    this.statsMove1,
    this.restoredInvBackup1,
    this.pitStatsPtl,
  });

  Profile profile;
  dynamic statsMove1;
  dynamic restoredInvBackup1;
  Map<String, int> pitStatsPtl;

  factory Pit.fromJson(Map<String, dynamic> json) => Pit(
        profile:
            json["profile"] == null ? null : Profile.fromJson(json["profile"]),
        statsMove1: json["stats_move_1"] == null ? null : json["stats_move_1"],
        restoredInvBackup1: json["restored_inv_backup_1"] == null
            ? null
            : json["restored_inv_backup_1"],
        pitStatsPtl: json["pit_stats_ptl"] == null
            ? null
            : Map.from(json["pit_stats_ptl"])
                .map((k, v) => MapEntry<String, int>(k, v)),
      );

  Map<String, dynamic> toJson() => {
        "profile": profile == null ? null : profile.toJson(),
        "stats_move_1": statsMove1 == null ? null : statsMove1,
        "restored_inv_backup_1":
            restoredInvBackup1 == null ? null : restoredInvBackup1,
        "pit_stats_ptl": pitStatsPtl == null
            ? null
            : Map.from(pitStatsPtl)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}

class Profile {
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

  List<dynamic> outgoingOffers;
  List<dynamic> contractChoices;
  dynamic lastSave;
  dynamic hatColor;
  List<int> tradeTimestamps;
  bool impatientEnabled;
  DeathRecaps invEnderchest;
  DeathRecaps invContents;
  DeathRecaps invArmor;
  DeathRecaps itemStash;
  DeathRecaps mysticWellItem;
  DeathRecaps mysticWellPants;
  DeathRecaps deathRecaps;
  dynamic cash;
  InventoriesClass leaderboardStats;
  bool genesisSpawnInBase;
  String selectedPerk0;
  String selectedPerk1;
  String selectedPerk2;
  String selectedPerk3;
  dynamic lastContract;
  List<EndedContract> endedContracts;
  List<GoldTransaction> goldTransactions;
  dynamic renown;
  bool hatEnabled;
  dynamic genesisPoints;
  bool dropConfirmDisabled;
  List<Prestige> prestiges;
  bool zeroPointThreeGoldTransfer;
  List<RenownUnlock> renownUnlocks;
  String selectedLaunchTrail;
  String selectedLeaderboard;
  dynamic lastMidfightDisconnect;
  dynamic genesisAllegianceTime;
  dynamic genesisWeeklyPerksClaimItemDemon;
  List<dynamic> loginMessages;
  List<int> hotbarFavorites;
  dynamic reconessenceDay;
  bool chatOptionPlayerChat;
  bool chatOptionMisc;
  bool chatOptionBounties;
  bool chatOptionPrestigeAnnouncements;
  bool chatOptionStreaks;
  bool chatOptionKillFeed;
  bool apolloEnabled;
  dynamic zeroPointTwoXp;
  dynamic lastLycanthropy;
  List<RecentKill> recentKills;
  dynamic xp;
  List<Bounty> bounties;
  bool nightQuestsEnabled;
  String genesisAllegiance;
  dynamic cashDuringPrestige0;
  dynamic cashDuringPrestige1;
  List<RenownUnlock> unlocks;
  List<RenownUnlock> unlocks1;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        outgoingOffers: json["outgoing_offers"] == null
            ? null
            : List<dynamic>.from(json["outgoing_offers"].map((x) => x)),
        contractChoices: json["contract_choices"] == null
            ? null
            : List<dynamic>.from(json["contract_choices"].map((x) => x)),
        lastSave: json["last_save"] == null ? null : json["last_save"],
        hatColor: json["hat_color"] == null ? null : json["hat_color"],
        tradeTimestamps: json["trade_timestamps"] == null
            ? null
            : List<int>.from(json["trade_timestamps"].map((x) => x)),
        impatientEnabled: json["impatient_enabled"] == null
            ? null
            : json["impatient_enabled"],
        invEnderchest: json["inv_enderchest"] == null
            ? null
            : DeathRecaps.fromJson(json["inv_enderchest"]),
        invContents: json["inv_contents"] == null
            ? null
            : DeathRecaps.fromJson(json["inv_contents"]),
        invArmor: json["inv_armor"] == null
            ? null
            : DeathRecaps.fromJson(json["inv_armor"]),
        itemStash: json["item_stash"] == null
            ? null
            : DeathRecaps.fromJson(json["item_stash"]),
        mysticWellItem: json["mystic_well_item"] == null
            ? null
            : DeathRecaps.fromJson(json["mystic_well_item"]),
        mysticWellPants: json["mystic_well_pants"] == null
            ? null
            : DeathRecaps.fromJson(json["mystic_well_pants"]),
        deathRecaps: json["death_recaps"] == null
            ? null
            : DeathRecaps.fromJson(json["death_recaps"]),
        cash: json["cash"] == null ? null : json["cash"],
        leaderboardStats: json["leaderboard_stats"] == null
            ? null
            : InventoriesClass.fromJson(json["leaderboard_stats"]),
        genesisSpawnInBase: json["genesis_spawn_in_base"] == null
            ? null
            : json["genesis_spawn_in_base"],
        selectedPerk0:
            json["selected_perk_0"] == null ? null : json["selected_perk_0"],
        selectedPerk1:
            json["selected_perk_1"] == null ? null : json["selected_perk_1"],
        selectedPerk2:
            json["selected_perk_2"] == null ? null : json["selected_perk_2"],
        selectedPerk3:
            json["selected_perk_3"] == null ? null : json["selected_perk_3"],
        lastContract:
            json["last_contract"] == null ? null : json["last_contract"],
        endedContracts: json["ended_contracts"] == null
            ? null
            : List<EndedContract>.from(
                json["ended_contracts"].map((x) => EndedContract.fromJson(x))),
        goldTransactions: json["gold_transactions"] == null
            ? null
            : List<GoldTransaction>.from(json["gold_transactions"]
                .map((x) => GoldTransaction.fromJson(x))),
        renown: json["renown"] == null ? null : json["renown"],
        hatEnabled: json["hat_enabled"] == null ? null : json["hat_enabled"],
        genesisPoints:
            json["genesis_points"] == null ? null : json["genesis_points"],
        dropConfirmDisabled: json["drop_confirm_disabled"] == null
            ? null
            : json["drop_confirm_disabled"],
        prestiges: json["prestiges"] == null
            ? null
            : List<Prestige>.from(
                json["prestiges"].map((x) => Prestige.fromJson(x))),
        zeroPointThreeGoldTransfer:
            json["zero_point_three_gold_transfer"] == null
                ? null
                : json["zero_point_three_gold_transfer"],
        renownUnlocks: json["renown_unlocks"] == null
            ? null
            : List<RenownUnlock>.from(
                json["renown_unlocks"].map((x) => RenownUnlock.fromJson(x))),
        selectedLaunchTrail: json["selected_launch_trail"] == null
            ? null
            : json["selected_launch_trail"],
        selectedLeaderboard: json["selected_leaderboard"] == null
            ? null
            : json["selected_leaderboard"],
        lastMidfightDisconnect: json["last_midfight_disconnect"] == null
            ? null
            : json["last_midfight_disconnect"],
        genesisAllegianceTime: json["genesis_allegiance_time"] == null
            ? null
            : json["genesis_allegiance_time"],
        genesisWeeklyPerksClaimItemDemon:
            json["genesis_weekly_perks_claim_item_demon"] == null
                ? null
                : json["genesis_weekly_perks_claim_item_demon"],
        loginMessages: json["login_messages"] == null
            ? null
            : List<dynamic>.from(json["login_messages"].map((x) => x)),
        hotbarFavorites: json["hotbar_favorites"] == null
            ? null
            : List<int>.from(json["hotbar_favorites"].map((x) => x)),
        reconessenceDay:
            json["reconessence_day"] == null ? null : json["reconessence_day"],
        chatOptionPlayerChat: json["chat_option_player_chat"] == null
            ? null
            : json["chat_option_player_chat"],
        chatOptionMisc:
            json["chat_option_misc"] == null ? null : json["chat_option_misc"],
        chatOptionBounties: json["chat_option_bounties"] == null
            ? null
            : json["chat_option_bounties"],
        chatOptionPrestigeAnnouncements:
            json["chat_option_prestige_announcements"] == null
                ? null
                : json["chat_option_prestige_announcements"],
        chatOptionStreaks: json["chat_option_streaks"] == null
            ? null
            : json["chat_option_streaks"],
        chatOptionKillFeed: json["chat_option_kill_feed"] == null
            ? null
            : json["chat_option_kill_feed"],
        apolloEnabled:
            json["apollo_enabled"] == null ? null : json["apollo_enabled"],
        zeroPointTwoXp: json["zero_point_two_xp"] == null
            ? null
            : json["zero_point_two_xp"],
        lastLycanthropy:
            json["last_lycanthropy"] == null ? null : json["last_lycanthropy"],
        recentKills: json["recent_kills"] == null
            ? null
            : List<RecentKill>.from(
                json["recent_kills"].map((x) => RecentKill.fromJson(x))),
        xp: json["xp"] == null ? null : json["xp"],
        bounties: json["bounties"] == null
            ? null
            : List<Bounty>.from(
                json["bounties"].map((x) => Bounty.fromJson(x))),
        nightQuestsEnabled: json["night_quests_enabled"] == null
            ? null
            : json["night_quests_enabled"],
        genesisAllegiance: json["genesis_allegiance"] == null
            ? null
            : json["genesis_allegiance"],
        cashDuringPrestige0: json["cash_during_prestige_0"] == null
            ? null
            : json["cash_during_prestige_0"],
        cashDuringPrestige1: json["cash_during_prestige_1"] == null
            ? null
            : json["cash_during_prestige_1"],
        unlocks: json["unlocks"] == null
            ? null
            : List<RenownUnlock>.from(
                json["unlocks"].map((x) => RenownUnlock.fromJson(x))),
        unlocks1: json["unlocks_1"] == null
            ? null
            : List<RenownUnlock>.from(
                json["unlocks_1"].map((x) => RenownUnlock.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "outgoing_offers": outgoingOffers == null
            ? null
            : List<dynamic>.from(outgoingOffers.map((x) => x)),
        "contract_choices": contractChoices == null
            ? null
            : List<dynamic>.from(contractChoices.map((x) => x)),
        "last_save": lastSave == null ? null : lastSave,
        "hat_color": hatColor == null ? null : hatColor,
        "trade_timestamps": tradeTimestamps == null
            ? null
            : List<dynamic>.from(tradeTimestamps.map((x) => x)),
        "impatient_enabled": impatientEnabled == null ? null : impatientEnabled,
        "inv_enderchest": invEnderchest == null ? null : invEnderchest.toJson(),
        "inv_contents": invContents == null ? null : invContents.toJson(),
        "inv_armor": invArmor == null ? null : invArmor.toJson(),
        "item_stash": itemStash == null ? null : itemStash.toJson(),
        "mystic_well_item":
            mysticWellItem == null ? null : mysticWellItem.toJson(),
        "mystic_well_pants":
            mysticWellPants == null ? null : mysticWellPants.toJson(),
        "death_recaps": deathRecaps == null ? null : deathRecaps.toJson(),
        "cash": cash == null ? null : cash,
        "leaderboard_stats":
            leaderboardStats == null ? null : leaderboardStats.toJson(),
        "genesis_spawn_in_base":
            genesisSpawnInBase == null ? null : genesisSpawnInBase,
        "selected_perk_0": selectedPerk0 == null ? null : selectedPerk0,
        "selected_perk_1": selectedPerk1 == null ? null : selectedPerk1,
        "selected_perk_2": selectedPerk2 == null ? null : selectedPerk2,
        "selected_perk_3": selectedPerk3 == null ? null : selectedPerk3,
        "last_contract": lastContract == null ? null : lastContract,
        "ended_contracts": endedContracts == null
            ? null
            : List<dynamic>.from(endedContracts.map((x) => x.toJson())),
        "gold_transactions": goldTransactions == null
            ? null
            : List<dynamic>.from(goldTransactions.map((x) => x.toJson())),
        "renown": renown == null ? null : renown,
        "hat_enabled": hatEnabled == null ? null : hatEnabled,
        "genesis_points": genesisPoints == null ? null : genesisPoints,
        "drop_confirm_disabled":
            dropConfirmDisabled == null ? null : dropConfirmDisabled,
        "prestiges": prestiges == null
            ? null
            : List<dynamic>.from(prestiges.map((x) => x.toJson())),
        "zero_point_three_gold_transfer": zeroPointThreeGoldTransfer == null
            ? null
            : zeroPointThreeGoldTransfer,
        "renown_unlocks": renownUnlocks == null
            ? null
            : List<dynamic>.from(renownUnlocks.map((x) => x.toJson())),
        "selected_launch_trail":
            selectedLaunchTrail == null ? null : selectedLaunchTrail,
        "selected_leaderboard":
            selectedLeaderboard == null ? null : selectedLeaderboard,
        "last_midfight_disconnect":
            lastMidfightDisconnect == null ? null : lastMidfightDisconnect,
        "genesis_allegiance_time":
            genesisAllegianceTime == null ? null : genesisAllegianceTime,
        "genesis_weekly_perks_claim_item_demon":
            genesisWeeklyPerksClaimItemDemon == null
                ? null
                : genesisWeeklyPerksClaimItemDemon,
        "login_messages": loginMessages == null
            ? null
            : List<dynamic>.from(loginMessages.map((x) => x)),
        "hotbar_favorites": hotbarFavorites == null
            ? null
            : List<dynamic>.from(hotbarFavorites.map((x) => x)),
        "reconessence_day": reconessenceDay == null ? null : reconessenceDay,
        "chat_option_player_chat":
            chatOptionPlayerChat == null ? null : chatOptionPlayerChat,
        "chat_option_misc": chatOptionMisc == null ? null : chatOptionMisc,
        "chat_option_bounties":
            chatOptionBounties == null ? null : chatOptionBounties,
        "chat_option_prestige_announcements":
            chatOptionPrestigeAnnouncements == null
                ? null
                : chatOptionPrestigeAnnouncements,
        "chat_option_streaks":
            chatOptionStreaks == null ? null : chatOptionStreaks,
        "chat_option_kill_feed":
            chatOptionKillFeed == null ? null : chatOptionKillFeed,
        "apollo_enabled": apolloEnabled == null ? null : apolloEnabled,
        "zero_point_two_xp": zeroPointTwoXp == null ? null : zeroPointTwoXp,
        "last_lycanthropy": lastLycanthropy == null ? null : lastLycanthropy,
        "recent_kills": recentKills == null
            ? null
            : List<dynamic>.from(recentKills.map((x) => x.toJson())),
        "xp": xp == null ? null : xp,
        "bounties": bounties == null
            ? null
            : List<dynamic>.from(bounties.map((x) => x.toJson())),
        "night_quests_enabled":
            nightQuestsEnabled == null ? null : nightQuestsEnabled,
        "genesis_allegiance":
            genesisAllegiance == null ? null : genesisAllegiance,
        "cash_during_prestige_0":
            cashDuringPrestige0 == null ? null : cashDuringPrestige0,
        "cash_during_prestige_1":
            cashDuringPrestige1 == null ? null : cashDuringPrestige1,
        "unlocks": unlocks == null
            ? null
            : List<dynamic>.from(unlocks.map((x) => x.toJson())),
        "unlocks_1": unlocks1 == null
            ? null
            : List<dynamic>.from(unlocks1.map((x) => x.toJson())),
      };
}

class Bounty {
  Bounty({
    this.amount,
    this.timestamp,
    this.remainingTicks,
    this.issuer,
  });

  dynamic amount;
  dynamic timestamp;
  dynamic remainingTicks;
  String issuer;

  factory Bounty.fromJson(Map<String, dynamic> json) => Bounty(
        amount: json["amount"] == null ? null : json["amount"],
        timestamp: json["timestamp"] == null ? null : json["timestamp"],
        remainingTicks:
            json["remainingTicks"] == null ? null : json["remainingTicks"],
        issuer: json["issuer"] == null ? null : json["issuer"],
      );

  Map<String, dynamic> toJson() => {
        "amount": amount == null ? null : amount,
        "timestamp": timestamp == null ? null : timestamp,
        "remainingTicks": remainingTicks == null ? null : remainingTicks,
        "issuer": issuer == null ? null : issuer,
      };
}

class DeathRecaps {
  DeathRecaps({
    this.type,
    this.data,
  });

  dynamic type;
  List<int> data;

  factory DeathRecaps.fromJson(Map<String, dynamic> json) => DeathRecaps(
        type: json["type"] == null ? null : json["type"],
        data: json["data"] == null
            ? null
            : List<int>.from(json["data"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
        "data": data == null ? null : List<dynamic>.from(data.map((x) => x)),
      };
}

class EndedContract {
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

  String difficulty;
  dynamic goldReward;
  InventoriesClass requirements;
  InventoriesClass progress;
  dynamic chunkOfVilesReward;
  dynamic completionDate;
  dynamic remainingTicks;
  String key;

  factory EndedContract.fromJson(Map<String, dynamic> json) => EndedContract(
        difficulty: json["difficulty"] == null ? null : json["difficulty"],
        goldReward: json["gold_reward"] == null ? null : json["gold_reward"],
        requirements: json["requirements"] == null
            ? null
            : InventoriesClass.fromJson(json["requirements"]),
        progress: json["progress"] == null
            ? null
            : InventoriesClass.fromJson(json["progress"]),
        chunkOfVilesReward: json["chunk_of_viles_reward"] == null
            ? null
            : json["chunk_of_viles_reward"],
        completionDate:
            json["completion_date"] == null ? null : json["completion_date"],
        remainingTicks:
            json["remaining_ticks"] == null ? null : json["remaining_ticks"],
        key: json["key"] == null ? null : json["key"],
      );

  Map<String, dynamic> toJson() => {
        "difficulty": difficulty == null ? null : difficulty,
        "gold_reward": goldReward == null ? null : goldReward,
        "requirements": requirements == null ? null : requirements.toJson(),
        "progress": progress == null ? null : progress.toJson(),
        "chunk_of_viles_reward":
            chunkOfVilesReward == null ? null : chunkOfVilesReward,
        "completion_date": completionDate == null ? null : completionDate,
        "remaining_ticks": remainingTicks == null ? null : remainingTicks,
        "key": key == null ? null : key,
      };
}

class GoldTransaction {
  GoldTransaction({
    this.amount,
    this.timestamp,
  });

  dynamic amount;
  dynamic timestamp;

  factory GoldTransaction.fromJson(Map<String, dynamic> json) =>
      GoldTransaction(
        amount: json["amount"] == null ? null : json["amount"],
        timestamp: json["timestamp"] == null ? null : json["timestamp"],
      );

  Map<String, dynamic> toJson() => {
        "amount": amount == null ? null : amount,
        "timestamp": timestamp == null ? null : timestamp,
      };
}

class Prestige {
  Prestige({
    this.index,
    this.xpOnPrestige,
    this.timestamp,
  });

  dynamic index;
  dynamic xpOnPrestige;
  dynamic timestamp;

  factory Prestige.fromJson(Map<String, dynamic> json) => Prestige(
        index: json["index"] == null ? null : json["index"],
        xpOnPrestige:
            json["xp_on_prestige"] == null ? null : json["xp_on_prestige"],
        timestamp: json["timestamp"] == null ? null : json["timestamp"],
      );

  Map<String, dynamic> toJson() => {
        "index": index == null ? null : index,
        "xp_on_prestige": xpOnPrestige == null ? null : xpOnPrestige,
        "timestamp": timestamp == null ? null : timestamp,
      };
}

class RecentKill {
  RecentKill({
    this.victim,
    this.timestamp,
  });

  String victim;
  dynamic timestamp;

  factory RecentKill.fromJson(Map<String, dynamic> json) => RecentKill(
        victim: json["victim"] == null ? null : json["victim"],
        timestamp: json["timestamp"] == null ? null : json["timestamp"],
      );

  Map<String, dynamic> toJson() => {
        "victim": victim == null ? null : victim,
        "timestamp": timestamp == null ? null : timestamp,
      };
}

class RenownUnlock {
  RenownUnlock({
    this.tier,
    this.acquireDate,
    this.key,
  });

  dynamic tier;
  dynamic acquireDate;
  String key;

  factory RenownUnlock.fromJson(Map<String, dynamic> json) => RenownUnlock(
        tier: json["tier"] == null ? null : json["tier"],
        acquireDate: json["acquireDate"] == null ? null : json["acquireDate"],
        key: json["key"] == null ? null : json["key"],
      );

  Map<String, dynamic> toJson() => {
        "tier": tier == null ? null : tier,
        "acquireDate": acquireDate == null ? null : acquireDate,
        "key": key == null ? null : key,
      };
}

class Tkr {
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

  dynamic coins;
  dynamic coinPickups;
  dynamic laps;
  dynamic wins;
  dynamic boxPickups;
  dynamic bananasSent;
  dynamic bananasReceived;
  dynamic bananaRatio;
  Trophies trophies;
  Maps maps;

  factory Tkr.fromJson(Map<String, dynamic> json) => Tkr(
        coins: json["coins"] == null ? null : json["coins"],
        coinPickups: json["coin_pickups"] == null ? null : json["coin_pickups"],
        laps: json["laps"] == null ? null : json["laps"],
        wins: json["wins"] == null ? null : json["wins"],
        boxPickups: json["box_pickups"] == null ? null : json["box_pickups"],
        bananasSent: json["bananas_sent"] == null ? null : json["bananas_sent"],
        bananasReceived:
            json["bananas_received"] == null ? null : json["bananas_received"],
        bananaRatio: json["banana_ratio"] == null ? null : json["banana_ratio"],
        trophies: json["trophies"] == null
            ? null
            : Trophies.fromJson(json["trophies"]),
        maps: json["maps"] == null ? null : Maps.fromJson(json["maps"]),
      );

  Map<String, dynamic> toJson() => {
        "coins": coins == null ? null : coins,
        "coin_pickups": coinPickups == null ? null : coinPickups,
        "laps": laps == null ? null : laps,
        "wins": wins == null ? null : wins,
        "box_pickups": boxPickups == null ? null : boxPickups,
        "bananas_sent": bananasSent == null ? null : bananasSent,
        "bananas_received": bananasReceived == null ? null : bananasReceived,
        "banana_ratio": bananaRatio == null ? null : bananaRatio,
        "trophies": trophies == null ? null : trophies.toJson(),
        "maps": maps == null ? null : maps.toJson(),
      };
}

class Maps {
  Maps({
    this.retro,
    this.hypixelgp,
    this.junglerush,
    this.olympus,
    this.canyon,
  });

  Canyon retro;
  Canyon hypixelgp;
  Canyon junglerush;
  Canyon olympus;
  Canyon canyon;

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
        retro: json["retro"] == null ? null : Canyon.fromJson(json["retro"]),
        hypixelgp: json["hypixelgp"] == null
            ? null
            : Canyon.fromJson(json["hypixelgp"]),
        junglerush: json["junglerush"] == null
            ? null
            : Canyon.fromJson(json["junglerush"]),
        olympus:
            json["olympus"] == null ? null : Canyon.fromJson(json["olympus"]),
        canyon: json["canyon"] == null ? null : Canyon.fromJson(json["canyon"]),
      );

  Map<String, dynamic> toJson() => {
        "retro": retro == null ? null : retro.toJson(),
        "hypixelgp": hypixelgp == null ? null : hypixelgp.toJson(),
        "junglerush": junglerush == null ? null : junglerush.toJson(),
        "olympus": olympus == null ? null : olympus.toJson(),
        "canyon": canyon == null ? null : canyon.toJson(),
      };
}

class Canyon {
  Canyon({
    this.games,
    this.winRatio,
    this.trophies,
  });

  dynamic games;
  dynamic winRatio;
  Trophies trophies;

  factory Canyon.fromJson(Map<String, dynamic> json) => Canyon(
        games: json["games"] == null ? null : json["games"],
        winRatio: json["win_ratio"] == null ? null : json["win_ratio"],
        trophies: json["trophies"] == null
            ? null
            : Trophies.fromJson(json["trophies"]),
      );

  Map<String, dynamic> toJson() => {
        "games": games == null ? null : games,
        "win_ratio": winRatio == null ? null : winRatio,
        "trophies": trophies == null ? null : trophies.toJson(),
      };
}

class Trophies {
  Trophies({
    this.gold,
    this.silver,
    this.bronze,
  });

  dynamic gold;
  dynamic silver;
  dynamic bronze;

  factory Trophies.fromJson(Map<String, dynamic> json) => Trophies(
        gold: json["gold"] == null ? null : json["gold"],
        silver: json["silver"] == null ? null : json["silver"],
        bronze: json["bronze"] == null ? null : json["bronze"],
      );

  Map<String, dynamic> toJson() => {
        "gold": gold == null ? null : gold,
        "silver": silver == null ? null : silver,
        "bronze": bronze == null ? null : bronze,
      };
}

class Voting {
  Voting({
    this.votesToday,
    this.totalVotes,
    this.lastVote,
  });

  dynamic votesToday;
  dynamic totalVotes;
  dynamic lastVote;

  factory Voting.fromJson(Map<String, dynamic> json) => Voting(
        votesToday: json["votes_today"] == null ? null : json["votes_today"],
        totalVotes: json["total_votes"] == null ? null : json["total_votes"],
        lastVote: json["last_vote"] == null ? null : json["last_vote"],
      );

  Map<String, dynamic> toJson() => {
        "votes_today": votesToday == null ? null : votesToday,
        "total_votes": totalVotes == null ? null : totalVotes,
        "last_vote": lastVote == null ? null : lastVote,
      };
}
