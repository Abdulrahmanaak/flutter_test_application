import 'package:flutter/material.dart';
import 'package:flutter_test_application/config/app_icons.dart';
import 'package:flutter_test_application/config/app_routes.dart';
import 'package:flutter_test_application/config/app_strings.dart';
// import 'package:http/http.dart' as http; //Request to Network! : Login User

// const baseUrl = 'http://localhost:8080'; //Request to Network! : Login User

class LoginPage extends StatelessWidget {
  // final loginRoute = '$baseUrl/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // doLogin(); //Request to Network! : Login User
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                Text(
                  AppStrings.helloWelcome,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  AppStrings.loginToContinue,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                    hintText: AppStrings.username,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: AppStrings.password,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      print('Forgot is Clicked');
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: Text(AppStrings.forgotPassword),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutes.main);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black,
                    ),
                    child: Text(AppStrings.login),
                  ),
                ),
                Spacer(),
                Text(
                  AppStrings.orSignInWith,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Google is clicked');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcons.icGoogle,
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(AppStrings.loginWithGoogle),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Facebook is clicked');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcons.icFacebook,
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(AppStrings.loginWithFacebook),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      AppStrings.dontHaveAccount,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.amber,
                      ),
                      child: Text(
                        AppStrings.signup,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // //Request to Network! : Login User
  // Future<String> doLogin() async {
  //   final response = await http.post(Uri.parse(loginRoute));
  //   if (response.statusCode == 200) {
  //     print(response.body);
  //     return response.body;
  //   } else {
  //     print('You have error!');
  //     throw Exception('Error');
  //   }
  // }
}
