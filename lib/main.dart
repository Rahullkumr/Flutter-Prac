import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: 'Exlog',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const RegistrationPage(title: 'Exlog - Expense Logger'),
      ),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key, required this.title});

  final String title;

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  // Database helper

  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Register',
                  style: TextStyle(fontSize: 32.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(hintText: 'Name'),
                  ),
                ),
                const SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(hintText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(height: 32.0),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(hintText: 'Password'),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
                const SizedBox(height: 32.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          //  Validate form for empty fields
                          if (nameController.text.isEmpty ||
                              emailController.text.isEmpty ||
                              passwordController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Empty fields not allowed'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          } else {
                            // navigate to login page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(
                                  email: emailController.text,
                                  password: passwordController.text,
                                ),
                              ),
                            );
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                const Text('Already have an account?'),
                const SizedBox(height: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to login page
                          String email = 'rahul@gmail.com';
                          String password = '1234';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(
                                email: email,
                                password: password,
                              ),
                            ),
                          );
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
