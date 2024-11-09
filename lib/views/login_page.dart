import 'package:firebase_basics/views/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/build_social_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'FarmerEats',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Be Vietnam',
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Row(
                    children: [
                      Text(
                        'Welcome back!',
                        style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'Be Vietnam',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      Text('New Here?',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Be Vietnam',
                            color: Colors.grey,
                          )),
                      SizedBox(
                        width: 2,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ));
                        },
                        child: Text('Create Account',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Be Vietnam',
                              color: Colors.deepOrangeAccent,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Email Address',
                        prefixIcon: Icon(
                          Icons.alternate_email_outlined,
                          size: 15,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade300),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        size: 15,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade300,
                    ),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrangeAccent,
                          // elevation: 5,
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'Be Vietnam',
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Text(
                    'or login with',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Be Vietnam',
                        color: Colors.grey.shade400),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BuildSocialButton(
                        imagePath: 'assets/images/google.png',
                        onTap: () {
                          print('Click Goggle');
                        },
                      ),
                      BuildSocialButton(
                        imagePath: 'assets/images/apple.png',
                        onTap: () {
                          print('Click apple');
                        },
                      ),
                      BuildSocialButton(
                        imagePath: 'assets/images/facebook.png',
                        onTap: () {
                          print('Click Facebook ');
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}