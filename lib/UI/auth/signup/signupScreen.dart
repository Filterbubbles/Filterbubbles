import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final TextStyle _textInputStyle = TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'SourceSansPro-Regular');
  final TextStyle _hintStyle = TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'SourceSansPro-Regular');
  TextEditingController firstname = new TextEditingController(text: "");
  TextEditingController lastname = new TextEditingController(text: "");
  TextEditingController username = new TextEditingController(text: "");
  TextEditingController password = new TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height:height,
      decoration: BoxDecoration(
          image: DecorationImage(
              // image: AssetImage("assets/3.png"),
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: new AppBar(),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Sign up!', style: TextStyle(color: Colors.white, fontSize: 25, fontFamily: 'SourceSansPro-SemiBold'),),
                    SizedBox(height: 10),
                    Text('To see photos and videos from', style: TextStyle(color: Colors.white,fontSize: 17, fontFamily: 'SourceSansPro-Regular'),),
                    Text('your friends.', style: TextStyle(color: Colors.white,fontSize: 17, fontFamily: 'SourceSansPro-Regular'),),
                    SizedBox(height: 40),
                    TextField(
                      style: _textInputStyle,
                      controller: firstname,
                      keyboardType: TextInputType.emailAddress,
                      decoration: new InputDecoration(
                        // hasFloatingPlaceholder: true,
                        contentPadding: const EdgeInsets.only(
                            left: 10,
                            top: 10,
                            bottom: 10,
                            right: 10),
                        hintText: 'First Name',
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
                    SizedBox(height: 30),
                    TextField(
                      style: _textInputStyle,
                      controller: lastname,
                      keyboardType: TextInputType.emailAddress,
                      decoration: new InputDecoration(
                        // hasFloatingPlaceholder: true,
                        contentPadding: const EdgeInsets.only(
                            left: 10,
                            top: 10,
                            bottom: 10,
                            right: 10),
                        hintText: 'Last Name',
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
                    SizedBox(height: 30),
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
                        hintText: 'User name',
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
                    SizedBox(height: 30),
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
                        hintStyle:_hintStyle,
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
                    SizedBox(height: 40),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 35,
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
                            // padding: const EdgeInsets.symmetric(horizontal: 70),
                            minWidth: 170,
                            onPressed: (){
                              // Navigator.of(context).pushAndRemoveUntil(
                              //     MaterialPageRoute(builder: (context) => Platform.isAndroid ? LoginScreen() : CompanyNameScreen()),
                              //         (Route<dynamic> route) => false);
                            },
                            child: Text('Sign up',style: TextStyle(color: Colors.white, fontFamily: 'SourceSansPro-Regular')),
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
