import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Feature/Homepage/Data/Models/DataListModel.dart';

import 'package:http/http.dart ' as http;

class HomepageRepositories {
  final dataList = [];
  Future<List> logincheck(username, password) async {
    final data = {"username": username, "password": password};
    // final data = {"username": "emilys", "password": "emilyspass"};
    try {
      final response = await http.post(
        Uri.parse('https://dummyjson.com/auth/login'),
        body: data,
        headers: <String, String>{
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      );
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        dataList.add(responseData);
        // print("$dataList Data List");
      }
    } catch (e) {
      debugPrint("Error: $e");
      return [];
    }
    return dataList;
  }

  Future<List<Comment>> fetchComments() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/comments'),
    );
    print(response);
    if (response.statusCode == 403) {
      print("Error: ${response.statusCode}");
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((json) => Comment.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load comments');
    }
  }
}
