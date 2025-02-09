import 'package:expanses_tracker/models/expense.dart';
import 'package:expanses_tracker/widget/expanses_list/expanse_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) {
          return ExpenseItem(expense: expenses[index]);
        });
  }
}
