import 'package:startacapp/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final bool? isBorderType;

  const CustomButton({Key? key, required this.title, this.isBorderType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     padding:  const EdgeInsets.symmetric(
          horizontal: 15,
     vertical: 10),

      decoration: BoxDecoration(
        color:isBorderType== true ? null: Appcolors.primaryColor,
        borderRadius: BorderRadius.circular(10),
        border: isBorderType== true ? Border.all(
          color: Appcolors.primaryColor,
          width: 2,
        ):null
      ),
      child: const Center(
        child: Text(
          'View Comparison',style:TextStyle(
          fontSize: 16,
          color: Colors.white,


        ),
        ),
      ),
    );
  }
}
