import 'package:flutter/material.dart';
import 'package:spotify_ui/models/profile_lists_model.dart';

class ProfileListsCard extends StatelessWidget {
  const ProfileListsCard({super.key, required this.profileListsModel});

  final ProfileListsModel profileListsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 64,
      color: Colors.black,
        child: Row(
          children: [
            SizedBox(width: 12),
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24)
              ),
            ),
            SizedBox(width: 12),
            Container(
              width: 170,
              height: 44,
              margin: EdgeInsets.only(top: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(profileListsModel.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                            )
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.verified,
                            color: Color(0xff0D72EA)
                          )
                        ],
                      ),
                      Text('Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13
                        )
                      )
                    ],
                  ),
                ],
              )
            ),
            SizedBox(width: 80),
            Icon(Icons.more_vert,
              color: Colors.white,
            )
          ],
        ),
      );
  }
}