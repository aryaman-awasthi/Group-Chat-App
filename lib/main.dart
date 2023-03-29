import 'package:flutter/material.dart';
import 'package:host_group_chat/features/presentation/pages/login_page.dart';
import 'package:host_group_chat/on_generate_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Group Chat',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      onGenerateRoute: OnGenerateRoute.route,
      initialRoute: "/",
      routes: {
        "/":(context){
          return const LoginPage();
        }
      },
    );
  }
}
