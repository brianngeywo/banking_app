
import 'package:flutter/material.dart';

class MainAction {
  String icon;
  String title;

  MainAction({required this.icon, required this.title});
}

List<MainAction> actions = [
  MainAction(icon: "assets/wallet.png", title: 'Deposit'),
  MainAction(icon: "assets/send.png", title: 'Send'),
  MainAction(icon: "assets/banking.png", title: 'Withdraw'),
  MainAction(icon: "assets/loan.png", title: 'Loan'),
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

List<AppTransactions> transactions = [
  AppTransactions(title: "Grocery", moreInfo: "Nairobi, Eastleigh", date: "Aug 26", isDeposit: false, amount: "KES 3,500.00"),
  AppTransactions(title: "Salary", moreInfo: "Organisation", date: "Aug 26", isDeposit: true, amount: "KES 25,000.00"),
  AppTransactions(title: "Transport", moreInfo: "Trans Sacco", date: "Aug 26", isDeposit: false, amount: "KES 450.00"),
  AppTransactions(title: "Loan", moreInfo: "Loan App", date: "Aug 26", isDeposit: true, amount: "KES 5,000.00"),
  AppTransactions(title: "Grocery", moreInfo: "Nairobi, Eastleigh", date: "Aug 25", isDeposit: false, amount: "KES 1,500.00"),
  AppTransactions(title: "Transport", moreInfo: "Trans Sacco", date: "Aug 25", isDeposit: false, amount: "KES 250.00"),
  AppTransactions(title: "Transport", moreInfo: "Trans Sacco", date: "Aug 24", isDeposit: false, amount: "KES 650.00"),
];

Color primaryColor = Color(0xFF223960);
