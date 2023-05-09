import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fuel_app/pages/auth/register_page.dart';
import 'package:fuel_app/widgets/widgets.dart';
import 'package:lottie/lottie.dart';
import '../station_owner/station_home_page.dart';
import '../users/search_page.dart';
import '../users/user_home_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        // image: DecorationImage(
        //   image: AssetImage('Images/BG.jpeg'),
        //   fit: BoxFit.cover,
        // ),
      ),
      child: Scaffold(

        // backgroundColor: Colors.transparent,
        body: _isLoading ? Center(child: CircularProgressIndicator(),) : Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 80,),
                  Lottie.network('https://assets9.lottiefiles.com/packages/lf20_zw0djhar.json',
                    width: 300,
                    fit: BoxFit.fill,),
                  SizedBox(height: 40),
                  const Text('Welcome to the FuelApp',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFFFF5722)),),
                  SizedBox(height: 8,),
                  const Text('Life gets easy',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFFF77729)),),
                  SizedBox(height: 35,),
                  TextFormField(
                    decoration:textInputDecoration.copyWith (
                      labelText: "Email",
                      prefixIcon: const Icon(Icons.mail, color: Color(0xFFF27E37),),
                    ),
                    onChanged: (val){
                      setState(() {
                        email = val;
                      });
                    },
                    validator: (val){
                      return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val!) ? null: "Please enter a valid email";
                    },
                  ),
                  const SizedBox(height: 15,),
                  TextFormField(
                    obscureText: true,
                    decoration: textInputDecoration.copyWith(
                      labelText: "Password",
                      prefixIcon: const Icon(Icons.lock, color: Color(0xFFF27E37),),
                    ),
                    validator: (val){
                      if(val!.isNotEmpty){
                        if(val.length <6){
                          return "Password must be at least 6 charactors";
                        }else{
                          return null;
                        }
                      }else{
                        return "Password can not be empty";
                      }
                    },
                    onChanged: (val){
                      setState(() {
                        password = val;
                      });
                    },
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFF77729)
                    ),
                    onPressed: (){
                      loginUser();
                    },
                    child: Text('Log In as an User'),
                  ),
                  const SizedBox(height: 10,),
                  Text.rich(TextSpan(
                      text: "Don't have an account? ",
                      children: <TextSpan>[
                        TextSpan(
                            text: "Register here",
                            style: TextStyle(color: Colors.blueAccent),
                            recognizer: TapGestureRecognizer()..onTap=(){
                              nextScreen(context, RegisterPage());
                            }
                        )
                      ]
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  loginUser() async{
    if (formkey.currentState!.validate()){
      setState(() {
        _isLoading = true;
        nextScreen(context, SearchPage());
      });
    }
  }
}