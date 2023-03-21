import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextField extends StatelessWidget {
    CustomTextField({super.key, this.hintext, this.borderRadius, this.color});

   String? hintext;
  final BorderRadius? borderRadius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return  TextField(
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  
                ),
                hintText: hintext,
                hintStyle: const TextStyle(color: Colors.white),
                filled: true,
                fillColor: Color(0xff2B1A6C),
              ),
            );
  }
}