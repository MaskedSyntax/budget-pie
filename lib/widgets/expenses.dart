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

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          Text("Expense Charts"),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
