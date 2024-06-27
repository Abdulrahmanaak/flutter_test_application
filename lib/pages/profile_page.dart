import 'package:flutter/material.dart';
import 'package:flutter_test_application/components/toolbar.dart';
import 'package:flutter_test_application/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  print('edit');

                case ProfileMenu.logout:
                  print('log out');
                  break;
                default:
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text('Edit'),
                  value: ProfileMenu.edit,
                ),
                PopupMenuItem(
                  child: Text('Log out'),
                  value: ProfileMenu.logout,
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            child: Image.asset(
              'assets/temp/Photo.JPG',
              width: 90,
              height: 90,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Abdulrahman Khaled',
            style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Dhahran',
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '472',
                    style: AppText.header2,
                  ),
                  Text('followers'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '119',
                    style: AppText.header2,
                  ),
                  Text('posts'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '860',
                    style: AppText.header2,
                  ),
                  Text('following'),
                ],
              )
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
