import 'dart:convert';

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

  Future<void> fetchMenuItems() async {
    try {
      final response = await http.get(
        'https://opendining.net/api/v1/restaurants/5f3d94f937ab46182b7b23da/menu/tier?include_combo=true&key=6d6bf06a4f653a54da8d88715a736a4ca6071ffb' as Uri,
      );
      if (response.statusCode == 200) {
        menuItems = MenuItem.fromJson(json.decode(response as String)) as List<MenuItem>;

      } else {
        throw Exception('Failed to load menu items');
      }
    } catch (e) {
      print('Error fetching menu items: $e');
    }
  }
}