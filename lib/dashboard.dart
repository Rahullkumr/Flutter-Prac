import 'add_expenses.dart';
import 'view_expenses.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  final String email;
  final String password;
  const DashboardPage({super.key, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('Dashboard'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(email),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    elevation: 10,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Card(
                                    color: Colors.blue[300],
                                    child: const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Income",
                                                style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "₹ 6000",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Card(
                                    color: Colors.green[300],
                                    child: const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Expense",
                                                style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "₹ 2000",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                color: Colors.red[500],
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Balance",
                                            style: TextStyle(
                                              fontSize: 28,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "₹ 4000",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AddExpenses(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "Add Expenses",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ViewExpenses(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "View Expenses",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
