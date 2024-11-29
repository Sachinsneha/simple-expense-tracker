import 'package:expanses_tracker/widget/expanses_list/expenses_list.dart';
import 'package:expanses_tracker/widget/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expanses_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        amount: 19.999,
        title: 'Fluttter Course',
        date: DateTime.now(),
        categories: Category.work),
    Expense(
        amount: 19.999,
        title: 'Cenima',
        date: DateTime.now(),
        categories: Category.lesisure),
  ];
  void _openAddExpenseOverLay() {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return const NewExpense();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
              onPressed: _openAddExpenseOverLay, icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}
