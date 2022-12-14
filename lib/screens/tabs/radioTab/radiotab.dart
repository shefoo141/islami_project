import 'package:flutter/material.dart';

class radioTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Image(image: AssetImage('assets/images/radio_image.png')),
        ),
      ],
    );
  }
}
