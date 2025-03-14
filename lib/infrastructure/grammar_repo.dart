import 'dart:convert';

import 'package:english_mastery/domain/grammar/articles_quantifiers_model.dart';
import 'package:english_mastery/domain/grammar/comparitives_superlatives_model.dart';
import 'package:english_mastery/domain/grammar/future_time_model.dart';
import 'package:english_mastery/domain/grammar/modals.dart';
import 'package:english_mastery/domain/grammar/passive_causative_model.dart';
import 'package:english_mastery/domain/grammar/past_time_model.dart';
import 'package:english_mastery/env.dart';
import 'package:english_mastery/urls.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class GrammarRepo {
  Future<PastTimeModel?> generate_past_time() async {
    try {
      final response = await http.get(
        Uri.parse("${Env.host}${URLs.past_time}"),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      print(
          "grammar generate_past_time() status code : ${response.statusCode}");
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        print("grammar generate body : ${response.body}");
        return PastTimeModel.fromJson(responseData);
      } else {
        if (kDebugMode) {
          print('Failed to fetch grammar data: ${response.statusCode}');
        }
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
      return null;
    }
  }

  Future<FutureTimeModel?> generate_future_time() async {
    try {
      final response = await http.get(
        Uri.parse("${Env.host}${URLs.future_time}"),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      print(
          "grammar generate_future_time() status code : ${response.statusCode}");
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        print("grammar generate body : ${response.body}");
        return FutureTimeModel.fromJson(responseData);
      } else {
        if (kDebugMode) {
          print('Failed to fetch grammar data: ${response.statusCode}');
        }
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
      return null;
    }
  }

  Future<ArticlesQuantifiersModel?> generate_articles_quantifiers() async {
    try {
      final response = await http.get(
        Uri.parse("${Env.host}${URLs.articles_quantifiers}"),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      print(
          "grammar generate_articles_quantifiers() status code : ${response.statusCode}");
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        print("grammar generate body : ${response.body}");
        return ArticlesQuantifiersModel.fromJson(responseData);
      } else {
        if (kDebugMode) {
          print('Failed to fetch grammar data: ${response.statusCode}');
        }
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
      return null;
    }
  }

  Future<ComparativesSuperlativesModel?>
      generate_comparitives_superlatives() async {
    try {
      final response = await http.get(
        Uri.parse("${Env.host}${URLs.comparitives_superlatives}"),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      print(
          "grammar generate_comparitives_superlatives() status code : ${response.statusCode}");
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        print("grammar generate body : ${response.body}");
        return ComparativesSuperlativesModel.fromJson(responseData);
      } else {
        if (kDebugMode) {
          print('Failed to fetch grammar data: ${response.statusCode}');
        }
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
      return null;
    }
  }

  Future<ModalsModel?> generate_modals() async {
    try {
      final response = await http.get(
        Uri.parse("${Env.host}${URLs.modals}"),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      print("grammar generate_modals() status code : ${response.statusCode}");
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        print("grammar generate body : ${response.body}");
        return ModalsModel.fromJson(responseData);
      } else {
        if (kDebugMode) {
          print('Failed to fetch grammar data: ${response.statusCode}');
        }
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
      return null;
    }
  }

  Future<PassiveCausativeModel?> generate_passive_causative() async {
    try {
      final response = await http.get(
        Uri.parse("${Env.host}${URLs.passive_causative}"),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      print(
          "grammar generate_passive_causative() status code : ${response.statusCode}");
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        print("grammar generate body : ${response.body}");
        return PassiveCausativeModel.fromJson(responseData);
      } else {
        if (kDebugMode) {
          print('Failed to fetch grammar data: ${response.statusCode}');
        }
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
      return null;
    }
  }
}
