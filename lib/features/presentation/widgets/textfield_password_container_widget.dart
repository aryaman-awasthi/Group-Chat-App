import 'package:flutter/material.dart';
import 'package:host_group_chat/features/presentation/widgets/theme/style.dart';

class TextFieldPasswordContainerWidget extends StatefulWidget {

  final TextEditingController? controller;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;

  const TextFieldPasswordContainerWidget
      ({Key? key, this.controller, this.prefixIcon, this.keyboardType}) : super(key: key);

  @override
  State<TextFieldPasswordContainerWidget> createState() => _TextFieldPasswordContainerWidgetState();
}

class _TextFieldPasswordContainerWidgetState extends State<TextFieldPasswordContainerWidget> {


  bool isObscureText = true;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: color747480.withOpacity(.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        obscureText: isObscureText,
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(widget.prefixIcon),
          suffixIcon: InkWell(onTap: () {
            setState(() {
              isObscureText = !isObscureText;
            });
          }, child: Icon(isObscureText == true ? Icons.panorama_fish_eye : Icons.remove_red_eye)),
        ),
      ),
    );

  }
}
// widget.suffixIcon