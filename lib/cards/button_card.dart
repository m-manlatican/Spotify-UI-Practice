import 'package:flutter/material.dart';
import 'package:spotify_ui/models/button_model.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard({super.key, required this.buttonModel, required this.color});

  final ButtonModel buttonModel;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 32,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(32)
          ),
          child: Container(
            margin: EdgeInsets.only(top: 8, bottom: 9, left: 12, right: 12),
            child: IntrinsicWidth(
              child: Text(buttonModel.title,
                style: TextStyle(fontSize: 13,color: Colors.white),  
              ),
            ),
          )
        )
      ],
    );
  }
}