import 'package:flutter/material.dart';

class MainAction {
  IconData icon;
  String title;

  MainAction({required this.icon, required this.title});
}

List<MainAction> actions = [
  MainAction(icon: Icons.arrow_upward_rounded, title: 'Deposit'),
  MainAction(icon: Icons.arrow_forward_rounded, title: 'Send'),
  MainAction(icon: Icons.arrow_downward_rounded, title: 'Withdraw'),
  MainAction(icon: Icons.note_alt_outlined, title: 'Loan'),
];

List<String> mainOperations = [
  "All",
  "Income",
  "Expenses",
];

class AppTransactions {
  final String title;
  final String moreInfo;
  final String date;
  final bool isDeposit;
  final String amount;

  AppTransactions({
    required this.title,
    required this.moreInfo,
    required this.date,
    required this.isDeposit,
    required this.amount,
  });
}

List<AppTransactions> transactions
