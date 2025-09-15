import 'package:flutter/material.dart';

class custombookdetailappbar extends StatelessWidget {
  const custombookdetailappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close, size: 35),
          ),
          Spacer(),
          Icon(Icons.shopping_cart, size: 35, color: Colors.white),
        ],
      ),
    );
  }
}
