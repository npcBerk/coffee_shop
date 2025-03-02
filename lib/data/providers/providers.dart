import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryProvider with ChangeNotifier {//Burası material.dart'tan geliyor
  String _selectedCategory = "All";

  String get selectedCategory => _selectedCategory;

  void selectCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }
}
//burası flutter_riverpod.dart'tan geliyor
final categoryProvider = ChangeNotifierProvider<CategoryProvider>((ref) => CategoryProvider());

final selectedIndexProvider = StateProvider<int>((ref) => 0);