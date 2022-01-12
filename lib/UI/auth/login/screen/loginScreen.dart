import 'package:callingapp/UI/dashboard/screen/dashboardScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../auth/forgot/forgotScreen.dart';
import '../../../auth/signup/signupScreen.dart';
import '../../../auth/loginWithFace/screen/LoginWithFaceId.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextStyle _textInputStyle = TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'SourceSansPro-Regular');
  final TextStyle _hintStyle = TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'SourceSansPro-Regular');
  TextEditingController username = new TextEditingController(text: "");
  TextEditingController password = new TextEditingController(text: "");


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body: Container(
        width: width,
        height:height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover
          )
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text('Log in', style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'SourceSansPro-Bold'),),
                        SizedBox(height: 55),
                        TextField(
                          style: _textInputStyle,
                          controller: username,
                          keyboardType: TextInputType.emailAddress,
                          decoration: new InputDecoration(
                            // hasFloatingPlaceholder: true,
                            contentPadding: const EdgeInsets.only(
                                left: 10,
                                top: 10,
                                bottom: 10,
                                right: 10),
                            hintText: 'Username',
                            hintStyle: _hintStyle,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueAccent),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        TextField(
                          style: _textInputStyle,
                          controller: password,
                          keyboardType: TextInputType.emailAddress,
                          decoration: new InputDecoration(
                            // hasFloatingPlaceholder: true,
                            contentPadding: const EdgeInsets.only(
                                left: 10,
                                top: 10,
                                bottom: 10,
                                right: 10),
                            hintText: 'Password',
                            hintStyle: _hintStyle,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueAccent),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        const Color(0xFFFC69FC),
                                        const Color(0xFF10E7FB),
                                        const Color(0xFF93F331),
                                      ])),
                              child: MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotScreen()));

                                },
                                child: Text('Forgot password', style: TextStyle(color: Colors.white, fontSize: 11, fontFamily: 'SourceSansPro-SemiBold')),
                              ),
                            )
                        ),
                        SizedBox(height: 40),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        const Color(0xFFFC69FC),
                                        const Color(0xFF10E7FB),
                                        const Color(0xFF93F331),
                                        // Color.fromARGB(235, 200, 200, 253),
                                        // Color.fromARGB(235, 236, 240, 253)
                                      ])),
                              child: MaterialButton(
                                padding: const EdgeInsets.symmetric(horizontal: 50),
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DashboardScreen()));

                                /*  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(builder: (context) => UserProfileScreen()),
                                          (Route<dynamic> route) => false);*/
                                },
                                child: Text('Sign In',style: TextStyle(color: Colors.white, fontFamily: 'SourceSansPro-Regular')),
                              ),
                            )
                        ),
                        SizedBox(height: 15),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupScreen()));
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have account?" ,style: TextStyle(color: Colors.white, fontFamily: 'SourceSansPro-Regular')),
                              Text("Sign up" ,style: TextStyle(color: Colors.white, fontFamily: 'SourceSansPro-Regular')),
                            ],
                          ),
                        ),
                        SizedBox(height: 50),
                        Text('Sign in with',style: TextStyle(color: Colors.white, fontFamily: 'SourceSansPro-Regular')),
                        SizedBox(height: 40),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          const Color(0xFFFC69FC),
                                          const Color(0xFF10E7FB),
                                          const Color(0xFF93F331),
                                          // Color.fromARGB(235, 200, 200, 253),
                                          // Color.fromARGB(235, 236, 240, 253)
                                        ])),
                                child: InkWell(
                                    onTap: () {  },
                                    child: Container(
                                        padding: const EdgeInsets.all(10),
                                        child:SvgPicture.asset(
                                            "assets/svg/apple.svg",
                                            width: 25,
                                            height: 25,
                                            semanticsLabel: 'Apple'
                                        )
                                    )
                                )
                            ),
                            SizedBox(width: 10),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          const Color(0xFFFC69FC),
                                          const Color(0xFF10E7FB),
                                          const Color(0xFF93F331),
                                          // Color.fromARGB(235, 200, 200, 253),
                                          // Color.fromARGB(235, 236, 240, 253)
                                        ])),
                                child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginWithFaceId()));
                                    },
                                    child: Container(
                                        padding: const EdgeInsets.all(20),
                                        child:SvgPicture.asset(
                                            "assets/svg/faceScanner.svg",
                                            width: 40,
                                            height: 40,
                                            semanticsLabel: 'Apple'
                                        )
                                    )
                                )
                            ),
                            SizedBox(width: 10),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          const Color(0xFFFC69FC),
                                          const Color(0xFF10E7FB),
                                          const Color(0xFF93F331),
                                          // Color.fromARGB(235, 200, 200, 253),
                                          // Color.fromARGB(235, 236, 240, 253)
                                        ])),
                                child: InkWell(
                                    onTap: () {  },
                                    child: Container(
                                        padding: const EdgeInsets.all(10),
                                        child: SvgPicture.asset(
                                            "assets/svg/google++.svg",
                                            width: 25,
                                            height: 25,
                                            semanticsLabel: 'Apple'
                                        )
                                    )
                                )
                            ),
                          ],
                        )


                      ],
                    )
                  ],
                ),
              )

            ],
          )
        )
      )
    );
  }
}
