import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:host_group_chat/features/presentation/widgets/container_button_widget.dart';
import 'package:host_group_chat/features/presentation/widgets/headerWidget.dart';
import 'package:host_group_chat/features/presentation/widgets/textfield_container_widget.dart';
import 'package:host_group_chat/features/presentation/widgets/textfield_password_container_widget.dart';
import 'package:host_group_chat/features/presentation/widgets/theme/style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 32),
          child: Column(
            children: [
              // Created a separate widget - HeaderWidget in the widget folder
              const HeaderWidget(
                title: 'Login',
              ),

              const SizedBox(
                height: 20,
              ),

              // Text Field
              TextFieldContainerWidget(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icons.email,
              ),
              const SizedBox(
                height: 10,
              ),

              TextFieldPasswordContainerWidget(
                controller: _passwordController,
                keyboardType: TextInputType.text,
                prefixIcon: Icons.lock,
              ),
              const SizedBox(
                height: 10,
              ),
              _forgotPasswordWidget(),

              const SizedBox(
                height: 10,
              ),

              ContainerButtonWidget(
                title: "Login",
                onTap: () {
                  print("Hello");
                },
              ),

              const SizedBox(
                height: 10,
              ),

              _rowTextWidget(),

              const SizedBox(
                height: 10,
              ),

              _rowGoogleWidget(),

            ],
          ),
        ),
      ),
    );
  }
}

Widget _rowGoogleWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(50)
        ),
        child: const Icon(AntDesign.google, color: Colors.white,),
      ),
    ],
  );
}

Widget _rowTextWidget() {
  return Row(
    children: [
      const Text("Don't have an account?"),
      InkWell(
        onTap: () {
          //TODO: navigate to registration screen!
        },
        child: const Text(
          "Register!",
          style: TextStyle(
            color: greenColor,
          ),
        ),
      )
    ],
  );
}

Widget _forgotPasswordWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      Text(""),
      Text(
        "Forgot Password?",
        style: TextStyle(
            color: greenColor, fontSize: 15, fontWeight: FontWeight.w700),
      ),
    ],
  );
}
