import 'package:flutter/material.dart';
import 'package:spotify_ui/cards/button_card.dart';
import 'package:spotify_ui/models/button_model.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  
  final List<ButtonModel> listButtonModel = [
    ButtonModel(title: 'Profiles'),
    ButtonModel(title: 'Artists'),
    ButtonModel(title: 'Albums'),
    ButtonModel(title: 'Podcast & Shows'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.black,
      body: Column(
        children: [

        ],
      ),
    );
  }
  AppBar appBar() {
    return AppBar(
      backgroundColor: Color(0xff181818),
      toolbarHeight: 128,
      leadingWidth: 375,
      title: Column(
        children: [
          Row(
            children: [
              Icon(Icons.arrow_back,
                color: Colors.white,  
              ),
              SizedBox(width: 10,),
              Container(
                width: 290,
                height: 38,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 12),
                    Icon(Icons.search),
                    SizedBox(width: 12),
                    Text('cozy',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 180),
                    Icon(Icons.clear)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 13),
          SizedBox(
            height: 48,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: listButtonModel.length,
              separatorBuilder: (context, index) => SizedBox(width: 8), 
              itemBuilder: (context, index) {
                return ButtonCard(buttonModel: listButtonModel[index]);
              } 
            ),
          )
        ],
      )
    );
  }
}