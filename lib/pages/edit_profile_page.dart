import 'package:flutter/material.dart';
import 'package:flutter_test_application/components/app_text_field.dart';
import 'package:flutter_test_application/components/toolbar.dart';
import 'package:flutter_test_application/config/app_strings.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.editProfile),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            AppTextField(hint: AppStrings.firstName),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.lastName),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.phoneNumber),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.location),
          ],
        ),
      ),
    );
  }
}
