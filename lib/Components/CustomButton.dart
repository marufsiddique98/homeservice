import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  String txt;
  final action;
  CustomButton({Key? key,required this.txt, this.action}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 80,minWidth: MediaQuery.of(context).size.width),
      child: Container(
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
              elevation: 0
          ),
          onPressed: widget.action,
          child: Text(
            widget.txt,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
