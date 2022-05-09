import 'dart:convert';

import 'package:flutter/material.dart';


import 'package:http/http.dart' as http;

import '../models/space.dart';

import 'package:dio/dio.dart';
import 'package:kossearch/models/space.dart';
import 'package:dio/dio.dart';
import 'package:kossearch/core/category.dart';

import '../widgets/search/search_optionas.dart';

class SpaceProvider extends ChangeNotifier {

  getRecommendedSpaces() async {
    var result =
    await http.get('https://bwa-cozy.herokuapp.com/recommended-spaces');

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();
      return spaces;
    } else {
      return <Space>[];
    }
  }


  // final Dio _dio;
  // final List<Space> space= [];
  // SpaceProvider(String key)
  //     : _dio = Dio(BaseOptions(
  //   baseUrl: 'https://bwa-cozy.herokuapp.com/recommended-spaces',
  //   headers: {
  //     'user-key': key,
  //     'Accept': 'application/json',
  //   },
  // ));
  static Future<List<Space>> getData(String query) async {
    var response = await Dio().get( "https://bwa-cozy.herokuapp.com/recommended-spaces", queryParameters: {"name": query,});
    var result = Space.fromJsonList(response.data);
    return result;
  }
}

// const zLocations = ['name', 'city', 'country'];
// const zSort = ['price', 'rating'];
// const zOrder = ['asc', 'desc'];
// const double zMaxCount = 20;
//
// class KosApi {
//   final List<String> location = zLocations;
//   final List<String> Sort = zSort;
//   final List<String> order = zOrder;
//   final double count = zMaxCount;
//
  //final Dio _dio;
 // final List<Category> categories= [];
//
  // KosApi(String key) : _dio = Dio(BaseOptions(
  //   baseUrl: 'https://bwa-cozy.herokuapp.com/recommended-spaces',
    // headers: {
    //   'user-key': key,
    //   'Accept': 'application/json',
    // },
  // ));

//
//   Future loadCategories() async {
//     final response = await Dio.get('name');
//     final data = response.data['name'];
//     categories.addAll(data.map<Category>((json) => Category(
//       json['categories']['id'],
//       json['categories']['name'],
//       json['categories']['price'],
//     ),),);
//   }
//   Future<List> searchKos(String query, SearchOptions options) async {
//     final response = await Dio().get('search', queryParameters: {
//       'q': query,
//       ...(options != null ? options.toJson() : {}),
//     });
//     return response.data;
//   }

//}