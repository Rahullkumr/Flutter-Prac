import 'package:flutter/material.dart';

class ViewExpenses extends StatefulWidget {
  const ViewExpenses({super.key});

  @override
  State<ViewExpenses> createState() => _ViewExpensesState();
}

class _ViewExpensesState extends State<ViewExpenses> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Exlog - Expense Logger'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'work in progress',
            style: TextStyle(fontSize: 40.0),
          ),
        ),
      ),
    );
  }
}
