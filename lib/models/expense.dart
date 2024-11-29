import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:expanses_tracker/widget/new_expense.dart';

final uuid = Uuid();

enum Category { food, lesisure, travel, work }

const CategoryIcons = {
  Category.food: Icons.dining,
  Category.lesisure: Icons.movie,
  Category.travel: Icons.flight_takeoff,
  Category.work: Icons.work
};

class Expense {
  Expense(
      {required this.amount,
      required this.title,
      required this.date,
      required this.categories})
      : id = uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category categories;
  String get formatedDate {
    return formater.format(date);
  }
}
