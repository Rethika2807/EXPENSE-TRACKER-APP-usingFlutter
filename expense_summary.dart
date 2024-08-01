

import'package:expensetutorial/bar%20graph/bar_graph.dart'; import 'package:expensetutorial/data/expense_data.dart'; import 'package: flutter/material.dart';
import 'package:provider/provider.dart';
class ExpenseSummary extends StatelessWidget {
final DateTime startOfWeek;
const ExpenseSummary({
});
super.key,
required this.startOfWeek,
@override


required this.startOfWeek,
});
@override
Widget build (BuildContext context) {
// get yyyymmdd for each day of this week
String sunday =
convertDateTimeToString(startOfWeek.add(const Duration (days: 0)));
String monday =
convertDateTimeToString(startOfWeek.add(const Duration (days: 1)));
String tuesday =
convertDateTimeToString(startOfWeek.add(const Duration (days: 2)));
String wednesday =
convertDateTimeToString(startOfWeek.add(const Duration (days: 3)));
String thursday =
convertDateTimeToString(startOfWeek.add(const Duration (days: 4)));
String friday =
convertDateTimeToString(startOfWeek.add(const Duration (days: 5)));
String saturday =
convertDateTimeToString(startOfWeek.add(const Duration (days: 6)));
return Consumer<ExpenseData>(
builder: (context, value, child) => SizedBox(
height: 200,
child: MyBarGraph(
maxY: 100,
sunAmount: value.calculateDaily Expense Summary() [sunday] ?? 0, monAmount: value.calculateDaily Expense Summary() [monday] ?? 0, tueAmount: value.calculateDaily Expense Summary ( ) [tuesday] ?? 0, wedAmount: value.calculateDaily ExpenseSummary() [wednesday] ?? 0, thurAmount: value.calculateDailyExpense Summary() [thursday] ?? 0, friAmount: value.calculateDaily Expense Summary() [friday] ?? 0, satAmount: value.calculateDaily Expense Summary() [saturday] ?? 0,, ), // MyBarGraph
), // SizedBox
); // Consumer
}
}