import 'package:flutter/material.dart';
import 'package:spotify_ui/cards/profile_lists_card.dart';
import 'package:spotify_ui/models/profile_lists_model.dart';

class SectionProfileLists extends StatelessWidget {
  SectionProfileLists({super.key});

  final List<ProfileListsModel> listProfileListsModel = [
    ProfileListsModel(title: 'Cozy Coffeehouse'),
    ProfileListsModel(title: 'Cozy'),
    ProfileListsModel(title: 'cozy clouds'),
    ProfileListsModel(title: 'Cozy Coffeehouse'),
    ProfileListsModel(title: 'CozySpace'),
    ProfileListsModel(title: 'Cozy Boys'),
    ProfileListsModel(title: 'COZYXN_13'),
    ProfileListsModel(title: 'Cozy Brents'),
    ProfileListsModel(title: 'cozycoffee'),
    ProfileListsModel(title: 'Cozy :D'),
    ProfileListsModel(title: 'Cozy Coffeehouse'),
    ProfileListsModel(title: 'Cozy'),
    ProfileListsModel(title: 'cozy clouds'),
    ProfileListsModel(title: 'Cozy Coffeehouse'),
    ProfileListsModel(title: 'CozySpace'),
    ProfileListsModel(title: 'Cozy Boys'),
    ProfileListsModel(title: 'COZYXN_13'),
    ProfileListsModel(title: 'Cozy Brents'),
    ProfileListsModel(title: 'cozycoffee'),
    ProfileListsModel(title: 'Cozy :D'),
    ProfileListsModel(title: 'Cozy Coffeehouse'),
    ProfileListsModel(title: 'Cozy'),
    ProfileListsModel(title: 'cozy clouds'),
    ProfileListsModel(title: 'Cozy Coffeehouse'),
    ProfileListsModel(title: 'CozySpace'),
    ProfileListsModel(title: 'Cozy Boys'),
    ProfileListsModel(title: 'COZYXN_13'),
    ProfileListsModel(title: 'Cozy Brents'),
    ProfileListsModel(title: 'cozycoffee'),
    ProfileListsModel(title: 'Cozy :D'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: ListView.builder(
        itemCount: listProfileListsModel.length,
        itemBuilder: (context, index) {
          return ProfileListsCard(profileListsModel: listProfileListsModel[index]);
        }
      ),
    );
  }
}