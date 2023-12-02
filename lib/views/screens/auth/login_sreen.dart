import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/colors.dart';
import 'package:tiktok_clone/views/screens/widgets/text_input_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'BeatBox',
            style: TextStyle(
              letterSpacing: 2,
              fontSize: 35,
              color: buttonColor,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            'Login',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: emailController,
                icon: Icons.email,
                labelText: 'Email',
              )),
          SizedBox(
            height: 25,
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: passwordController,
                icon: Icons.lock,
                labelText: 'Password',
                isObscure: true,
              )),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
                color: buttonColor, borderRadius: BorderRadius.circular(5)),
            child: InkWell(
              onTap: () {},
              child: Center(
                  child: Text(
                'Login',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              )),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('dont have an account ?  ',
                  style: TextStyle(
                    fontSize: 20,
                  )),
              InkWell(
                onTap: () {},
                child: Text('Register',
                    style: TextStyle(
                      color: buttonColor,
                      fontSize: 20,
                    )),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
