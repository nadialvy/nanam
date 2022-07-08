import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nanam/colors.dart';
import 'package:nanam/widgets.dart';

class Home extends StatelessWidget{
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 243, 218),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //logo + text
            Column(
              children: [
                Image.asset('images/logoNanam.png', height: 80,),
                const SizedBox(height: 15),
                const Text(
                  'Hello Again!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Et commodo voluptate reprehenderit aliqua aliquip excepteur laborum qui aliquip.',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            //login
            const LoginUser(),
            //login with accounts
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                        child: const Divider(
                        color: Colors.black,
                        height: 50,
                        )),
                    ),
                    const Text("Or continue with"),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                        child: const Divider(
                        color: Colors.black,
                        height: 50,
                        )),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomWidgets.socialButtonCircle(
                      facebookColor, FontAwesomeIcons.facebookF,
                      iconColor: Colors.white, onTap: () {
                        Fluttertoast.showToast(msg: 'Oops there something error');
                    }),
                    CustomWidgets.socialButtonCircle(
                      twitterColor, FontAwesomeIcons.twitter,
                      iconColor: Colors.white, onTap: () {
                        Fluttertoast.showToast(msg: 'Oops there something error');
                    }),
                    CustomWidgets.socialButtonCircle(
                      googleColor, FontAwesomeIcons.googlePlusG,
                      iconColor: Colors.white, onTap: () {
                        Fluttertoast.showToast(msg: 'Oops there something error');
                    }),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoginUser extends StatefulWidget{
  const LoginUser({Key? key}) : super(key: key);

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  String _name = '';
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField (
        decoration: const InputDecoration(
          hintText: 'Input your name...',
          labelText: 'Name',
        ),
        onChanged: (String value){
          setState(() {
            _name = value;
          });
        }),
        const SizedBox(height: 10),
        TextField (
        decoration: const InputDecoration(
          hintText: 'Input your email...',
          labelText: 'Email',
        ),
        onChanged: (String value){
          setState(() {
            _email = value;
          });
        }),
        const SizedBox(height: 10),
        const Text(
          'Having trouble in sign in?',
          style: TextStyle(
            fontSize: 12,
            color: Color.fromARGB(255, 40, 54, 24),
          ),
        ),
        const SizedBox(height: 40),
        ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: double.infinity,
            minHeight: 50,
          ),
          child: ElevatedButton(
            onPressed: (){},
            child: const Text(
              'Sign In',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400
              ),
            )
          ),
        )
      ]
    );
  }  
}
