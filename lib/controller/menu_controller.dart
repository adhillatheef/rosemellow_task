import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/model.dart';

class MenuScreenController extends GetxController {
  List<MenuItem> menuItems = [];
  @override
  void onInit() {
    super.onInit();
    fetchMenuItems();
  }

  bool isLoading = false;

  Future<void> fetchMenuItems() async {
    const url =
        'https://opendining.net/api/v1/restaurants/5f3d94f937ab46182b7b23da/menu/tier?include_combo=true&key=6d6bf06a4f653a54da8d88715a736a4ca6071ffb';

    try {
      isLoading = true;
      menuItems = [];
      update();
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        final myData = MenuItems.fromJson(jsonResponse);
        menuItems = myData.menu?.first.items ?? [];
        debugPrint(myData.menu?[0].name);
        update();
      } else {
        debugPrint('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    } finally {
      isLoading = false;
      update();
    }
  }
}
