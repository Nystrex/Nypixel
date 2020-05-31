import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nypixel/models/guild.dart';
import 'package:nypixel/models/player.dart';

class API {
  static Future<Player> getPlayer(String name) async {
    final url = Uri(
        scheme: 'https', host: 'api.slothpixel.me', path: '/api/players/$name');
    final response = await http.get(url.toString());
    if (response.statusCode == 200) {
      return Player.fromJson(json.decode(response.body));
    } else {
      throw Exception("Player not Found");
    }
  }

  static Future<Guild> getGuild(String name) async {
    final url = Uri(
        scheme: 'https', host: 'api.slothpixel.me', path: '/api/guilds/$name');
    final response = await http.get(url.toString());
    if (response.statusCode == 200) {
      return Guild.fromJson(json.decode(response.body));
    } else {
      throw Exception("Guild not Found");
    }
  }
}
