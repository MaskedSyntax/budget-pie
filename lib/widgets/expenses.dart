import 'package:budgetpie/widgets/chart/chart.dart';
import 'package:budgetpie/widgets/expenses_list/expenses_list.dart';
import 'package:budgetpie/widgets/new_expense.dart';
import 'package:flutter/material.dart';

import '../models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Flutter Course",
      amount: 500,
      date: DateTime.now(),
      expenseCategory: ExpenseCategory.educationSubscriptions,
    ),
    Expense(
      title: "Dominoz",
      amount: 1500,
      date: DateTime.now(),
      expenseCategory: ExpenseCategory.foodDining,
    ),
    Expense(
      title: "Earbuds",
      amount: 850,
      date: DateTime.now(),
      expenseCategory: ExpenseCategory.shopping,
    ),
    Expense(
      title: "Udemy Subscription",
      amount: 1039,
      date: DateTime.now(),
      expenseCategory: ExpenseCategory.educationSubscriptions,
    ),
    Expense(
      title: "Netflix",
      amount: 500,
      date: DateTime.now(),
      expenseCategory: ExpenseCategory.entertainmentLeisure,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(onAddExpense: _addExpense),
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIdx = _registeredExpenses.indexOf(expense);

    setState(() {
      _registeredExpenses.remove(expense);
    });

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text("Expense Deleted!"),
        action: SnackBarAction(
          label: "Undo",
          onPressed: () {
            setState(() {
              _registeredExpenses.insert(expenseIdx, expense);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    print(width);
    print(height);

    Widget expenseContent = const Center(child: Text("No Expenses Added yet!"));

    if (_registeredExpenses.isNotEmpty) {
      expenseContent = ExpensesList(
        expenses: _registeredExpenses,
        onDeleteExpense: _removeExpense,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("BudgetPie!"),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body:
          width < height
              ? Column(
                children: [
                  Chart(expenses: _registeredExpenses),
                  Expanded(child: expenseContent),
                ],
              )
              : Row(
                children: [
                  Expanded(child: Chart(expenses: _registeredExpenses)),
                  Expanded(child: expenseContent),
                ],
              ),
    );
  }
}
