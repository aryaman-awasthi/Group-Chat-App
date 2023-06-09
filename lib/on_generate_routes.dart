import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:host_group_chat/features/presentation/pages/login_page.dart';

class OnGenerateRoute{
  static Route<dynamic> route (RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/" : {
        return materialBuilder(widget: const LoginPage());
      }
      default: {
        return materialBuilder(widget: const ErrorPage());
      }
    }
  }
}

// error page

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error Page"),
      ),
      body: const Center(
        child: Text("Error Page"),
      ),
    );
  }
}


// helper widget
// return type - materialPageRoute

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}