import 'package:flutter/material.dart';
import 'package:host_group_chat/features/presentation/widgets/theme/style.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  const HeaderWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),
        Container(
          alignment: Alignment.topLeft,
          child: Text(title, style: const TextStyle(
            fontSize: 35,
            color: greenColor,
            fontWeight: FontWeight.w700,
          ),),
        ),
        const SizedBox(height: 10,),
        const Divider(thickness: 1,)
      ],
    );
  }
}


