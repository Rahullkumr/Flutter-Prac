import 'dashboard.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String email;
  final String password;
  const LoginPage({super.key, required this.email, required this.password});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Exlog - Expense Logger'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Text(widget.email),
              SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Login',
                        style: TextStyle(fontSize: 32.0),
                        
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: TextField(
                          controller: emailController,
                          decoration: const InputDecoration(hintText: 'Email'),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration:
                              const InputDecoration(hintText: 'Password'),
                        ),
                      ),
                      const SizedBox(height: 32.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                            child: ElevatedButton(
                              onPressed: () {
                                // Validate form for empty fields
                          
                                if (emailController.text.isEmpty ||
                                    passwordController.text.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Empty fields not allowed'),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                } else if (_formKey.currentState!.validate()) {
                                  if (emailController.text == widget.email &&
                                      passwordController.text == widget.password) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DashboardPage(
                                          email: emailController.text,
                                          password: passwordController.text,
                                        ),
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Invalid Data'),
                                        backgroundColor: Colors.red,
                                      ),
                                    );
                                  }
                                }
                              },
                              child: const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                                                  ),
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
      ),
    );
  }
}
