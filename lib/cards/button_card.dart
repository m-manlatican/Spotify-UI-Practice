import 'package:flutter/material.dart';
import 'package:spotify_ui/models/button_model.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard({super.key, required this.buttonModel});

  final ButtonModel buttonModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 32,
          decoration: BoxDecoration(
            color: Color(0xff1FDF64),
            borderRadius: BorderRadius.circular(32)
          ),
          child: Container(
            margin: EdgeInsets.only(top: 8, bottom: 9, left: 12, right: 12),
            child: IntrinsicWidth(
              child: Text(buttonModel.title,
                style: TextStyle(fontSize: 13),  
              ),
            ),
          )
        )
      ],
    );
  }
}