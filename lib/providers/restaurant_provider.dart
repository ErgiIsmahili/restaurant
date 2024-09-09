import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';
import '../models/restaurant.dart';

final restaurantProvider = FutureProvider<List<Restaurant>>((ref) async {
  final String response = await rootBundle.loadString('assets/restaurants.json');
  final List<dynamic> data = jsonDecode(response);
  return data.map((json) => Restaurant.fromJson(json)).toList();
});