import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
final dateFormatter = DateFormat.yMd();

// TODO: Add separate Categories for Netflix and other related Subscriptions
enum ExpenseCategory {
  essentials,
  foodDining,
  transportation,
  healthFitness,
  educationSubscriptions,
  entertainmentLeisure,
  shopping,
  travel,
  workBusiness,
  financeSavings,
  giftsDonations,
  miscellaneous,
}

extension ExpenseCategoryExtension on ExpenseCategory {
  String get label {
    switch (this) {
      case ExpenseCategory.essentials:
        return "Essentials";
      case ExpenseCategory.foodDining:
        return "Food & Dining";
      case ExpenseCategory.transportation:
        return "Transportation";
      case ExpenseCategory.healthFitness:
        return "Health & Fitness";
      case ExpenseCategory.educationSubscriptions:
        return "Education & Subscriptions";
      case ExpenseCategory.entertainmentLeisure:
        return "Entertainment & Leisure";
      case ExpenseCategory.shopping:
        return "Shopping";
      case ExpenseCategory.travel:
        return "Travel";
      case ExpenseCategory.workBusiness:
        return "Work / Business";
      case ExpenseCategory.financeSavings:
        return "Finance & Savings";
      case ExpenseCategory.giftsDonations:
        return "Gifts & Donations";
      case ExpenseCategory.miscellaneous:
        return "Miscellaneous";
    }
  }
}

const Map<ExpenseCategory, IconData> categoryIcons = {
  ExpenseCategory.essentials: Icons.home,
  ExpenseCategory.foodDining: Icons.restaurant,
  ExpenseCategory.transportation: Icons.directions_car,
  ExpenseCategory.healthFitness: Icons.fitness_center,
  ExpenseCategory.educationSubscriptions: Icons.school,
  ExpenseCategory.entertainmentLeisure: Icons.movie,
  ExpenseCategory.shopping: Icons.shopping_cart,
  ExpenseCategory.travel: Icons.flight_takeoff,
  ExpenseCategory.workBusiness: Icons.work,
  ExpenseCategory.financeSavings: Icons.account_balance_wallet,
  ExpenseCategory.giftsDonations: Icons.card_giftcard,
  ExpenseCategory.miscellaneous: Icons.category,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.expenseCategory,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final ExpenseCategory expenseCategory;

  String get formattedDate {
    return dateFormatter.format(date);
  }
}
