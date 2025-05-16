import 'package:budgetpie/models/expense.dart';
import 'package:budgetpie/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onDeleteExpense,
  });

  final void Function(Expense expense) onDeleteExpense;
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder:
          (ctx, index) => Dismissible(
            background: Container(color: Theme.of(context).colorScheme.error),
            onDismissed: (direction) {
              onDeleteExpense(expenses[index]);
            },
            key: ValueKey(expenses[index]),
            child: ExpenseItem(expenses[index]),
          ),
    );
  }
}
