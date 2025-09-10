import 'package:bookstore/core/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class bookaction extends StatelessWidget {
  const bookaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Custombutton(
              text: '19.99 \$',
              backgroundcolor: Colors.white,
              textcolor: Colors.black,
              borderradius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: Custombutton(
              fontsize: 16,
              text: 'free preview',
              backgroundcolor: const Color.fromARGB(255, 241, 106, 106),
              textcolor: Colors.white,
              borderradius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
