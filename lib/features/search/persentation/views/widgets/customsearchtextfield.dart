import 'package:flutter/material.dart';

class customsearchtextfield extends StatelessWidget {
  const customsearchtextfield({super.key});

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey.shade300),
    );
    return TextField(
      decoration: InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,

        hintText: "search",
        suffixIcon: Opacity(
          opacity: 0.5,
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ),
      ),
    );
  }
}
