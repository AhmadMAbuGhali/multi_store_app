import 'package:flutter/material.dart';

class YellowButton extends StatelessWidget {
  final double widthValue;
  final String label;
  final Function() onPress;

  const YellowButton({
    required this.widthValue,
    required this.label,
    required this.onPress,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Container(
      height: 32,
      width: MediaQuery.of(context).size.width*widthValue,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.yellowAccent
      ),
      child: MaterialButton(onPressed: onPress,child: Text(label),),
    );
  }
}