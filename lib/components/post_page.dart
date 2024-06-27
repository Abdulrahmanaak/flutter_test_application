import 'package:flutter/material.dart';
import 'package:flutter_test_application/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(Object context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/Photo.JPG',
                height: 40,
                width: 40,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset('assets/temp/Photo.JPG'),
          SizedBox(
            height: 12,
          ),
          Text(
            'this is a comment in the image, and the image is a part of the post.',
            style: AppText.subtitle3,
          ),
        ],
      ),
    );
  }
}
