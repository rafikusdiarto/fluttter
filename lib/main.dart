import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_application_1/addTodo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

=======
import 'package:flutter_application_1/feature/authentication/login.dart';

void main() {
>>>>>>> d530f1f646b74107b4f334470a956efad0fdc67a
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
<<<<<<< HEAD
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddTodoPage(),
    );
=======
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage());
>>>>>>> d530f1f646b74107b4f334470a956efad0fdc67a
  }
}