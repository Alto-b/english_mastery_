// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:developer';
import 'package:english_mastery/domain/writing/writing_check_model.dart';
import 'package:english_mastery/domain/writing/writing_evaluate_model.dart';
import 'package:english_mastery/domain/writing/writing1_generate_model.dart';
import 'package:english_mastery/domain/writing/writing2_generate_model.dart';
import 'package:english_mastery/env.dart';
import 'package:english_mastery/urls.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Writing1Repo {
  Future<Writing1GenerateTaskModel?> writing1_generate_task() async {
    try {
      final response = await http.get(
        Uri.parse("${Env.host}${URLs.writing1_generate_task}"),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);

        // Create and return the model from the response data
        return Writing1GenerateTaskModel.fromJson(responseData);
      } else {
        // Handle non-200 responses, if necessary
        if (kDebugMode) {
          print('Failed to fetch data: ${response.statusCode}');
        }
        return null;
      }
    } catch (e) {
      // Handle any errors that occur during the request
      if (kDebugMode) {
        print('Error: $e');
      }
      return null;
    }
  }

  Future<Writing2GenerateModel?> writing2_generate_task() async {
    try {
      final response = await http.get(
        Uri.parse("${Env.host}${URLs.writing2_generate_task}"),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);

        // Create and return the model from the response data
        return Writing2GenerateModel.fromJson(responseData);
      } else {
        // Handle non-200 responses, if necessary
        print('Failed to fetch data: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      // Handle any errors that occur during the request
      print('Error: $e');
      return null;
    }
  }

  Future<Writing1CheckGrammarModel?> writing1_check_grammar(
      String user_input) async {
    log("", name: "writing1checkgrammar");
    try {
      Uri url = Uri.parse("${Env.host}${URLs.writing1_check_grammar}");
      final response = await http.post(url,
          headers: {
            'Content-Type': 'application/json',
          },
          body: jsonEncode({"user_answer": user_input}));
      if (response.statusCode == 200) {
        final jsonData = await jsonDecode(response.body);
        log("$jsonData", name: "writing1checkgrammar");
        return Writing1CheckGrammarModel.fromJson(jsonData);
      } else {
        // Handle non-200 responses, if necessary
        print('Failed to fetch data: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error: $e');
    }
    return null;
  }

  Future<Writing1EvaluateModel?> writing1_evaluation(String user_input) async {
    try {
      Uri url = Uri.parse("${Env.host}${URLs.writing1_evaluation}");
      final response = await http.post(url,
          headers: {
            'Content-Type': 'application/json',
          },
          body: jsonEncode({"user_answer": user_input}));
      if (response.statusCode == 200) {
        final jsonData = await jsonDecode(response.body);
        return Writing1EvaluateModel.fromJson(jsonData);
      } else {
        print('Failed to evaluate writing1 data: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error: $e');
    }
    return null;
  }
}
