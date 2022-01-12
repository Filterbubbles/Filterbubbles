import 'package:callingapp/component/customMenu/bottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FriendsStoriesScreen extends StatefulWidget {
  const FriendsStoriesScreen({Key? key}) : super(key: key);

  @override
  _FriendsStoriesScreenState createState() => _FriendsStoriesScreenState();
}

class _FriendsStoriesScreenState extends State<FriendsStoriesScreen> {

  static double iconeWidth = 50;
  static double iconesHeight = 50;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height:height,
      decoration: BoxDecoration(
          borderRadius:
          BorderRadius.all(Radius.circular(15)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xFFE2ED17),
                const Color(0xFFC241F7),
                const Color(0xFF02DCF0),
                // Color.fromARGB(235, 200, 200, 253),
                // Color.fromARGB(235, 236, 240, 253)
              ])),
/*      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/9.png"),
              // image: AssetImage("assets/background.png"),
              fit: BoxFit.cover
          )
      ),*/
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: new AppBar(
        ),
        body: SafeArea(
          child: Stack(
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 25, right: 25, top: 2, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("Friend Stories",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: "SourceSansPro-SemiBold", color: Colors.white, fontSize: 17)
                        ),
                        SizedBox(height: 35),
                        Wrap(
                          spacing: 15,
                          runSpacing: 15,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage("assets/6.png"),
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              backgroundColor: Colors.transparent,
                            ),
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage("assets/6.png"),
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              backgroundColor: Colors.transparent,
                            ),
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage("assets/6.png"),
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              backgroundColor: Colors.transparent,
                            ),
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage("assets/6.png"),
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              backgroundColor: Colors.transparent,
                            ),
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage("assets/6.png"),
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              backgroundColor: Colors.transparent,
                            ),
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage("assets/6.png"),
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              backgroundColor: Colors.transparent,
                            ),
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage("assets/6.png"),
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              backgroundColor: Colors.transparent,
                            ),
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage("assets/6.png"),
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              backgroundColor: Colors.transparent,
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(color: Colors.white),
                        SizedBox(height: 10),

                        Text("Subscribed bubbles",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: "SourceSansPro-SemiBold", color: Colors.white, fontSize: 17)
                        ),
                        SizedBox(height: 15),
                        Wrap(
                          spacing: 15,
                          runSpacing: 15,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              child: SvgPicture.asset(
                                  "assets/svg/home.svg",
                                  width: iconeWidth,
                                  height: iconesHeight,
                                  semanticsLabel: 'Home'
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                            CircleAvatar(
                              radius: 30.0,
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              child: SvgPicture.asset(
                                  "assets/svg/home.svg",
                                  width: iconeWidth,
                                  height: iconesHeight,
                                  semanticsLabel: 'Home'
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                            CircleAvatar(
                              radius: 30.0,
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              child: SvgPicture.asset(
                                  "assets/svg/home.svg",
                                  width: iconeWidth,
                                  height: iconesHeight,
                                  semanticsLabel: 'Home'
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                            CircleAvatar(
                              radius: 30.0,
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              child: SvgPicture.asset(
                                  "assets/svg/home.svg",
                                  width: iconeWidth,
                                  height: iconesHeight,
                                  semanticsLabel: 'Home'
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                            CircleAvatar(
                              radius: 30.0,
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              child: SvgPicture.asset(
                                  "assets/svg/home.svg",
                                  width: iconeWidth,
                                  height: iconesHeight,
                                  semanticsLabel: 'Home'
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                            CircleAvatar(
                              radius: 30.0,
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              child: SvgPicture.asset(
                                  "assets/svg/home.svg",
                                  width: iconeWidth,
                                  height: iconesHeight,
                                  semanticsLabel: 'Home'
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(color: Colors.white),
                        SizedBox(height: 10),

                        Text("Explore trending bubble",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: "SourceSansPro-SemiBold", color: Colors.white, fontSize: 17)
                        ),
                        SizedBox(height: 15),
                        Wrap(
                          spacing: 15,
                          runSpacing: 15,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              child: SvgPicture.asset(
                                  "assets/svg/home.svg",
                                  width: iconeWidth,
                                  height: iconesHeight,
                                  semanticsLabel: 'Home'
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                            CircleAvatar(
                              radius: 30.0,
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              child: SvgPicture.asset(
                                  "assets/svg/home.svg",
                                  width: iconeWidth,
                                  height: iconesHeight,
                                  semanticsLabel: 'Home'
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                            CircleAvatar(
                              radius: 30.0,
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              child: SvgPicture.asset(
                                  "assets/svg/home.svg",
                                  width: iconeWidth,
                                  height: iconesHeight,
                                  semanticsLabel: 'Home'
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                            CircleAvatar(
                              radius: 30.0,
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              child: SvgPicture.asset(
                                  "assets/svg/home.svg",
                                  width: iconeWidth,
                                  height: iconesHeight,
                                  semanticsLabel: 'Home'
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                            CircleAvatar(
                              radius: 30.0,
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              child: SvgPicture.asset(
                                  "assets/svg/home.svg",
                                  width: iconeWidth,
                                  height: iconesHeight,
                                  semanticsLabel: 'Home'
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                            CircleAvatar(
                              radius: 30.0,
                              // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                              child: SvgPicture.asset(
                                  "assets/svg/home.svg",
                                  width: iconeWidth,
                                  height: iconesHeight,
                                  semanticsLabel: 'Home'
                              ),
                              backgroundColor: Colors.transparent,
                            ),

                          ],
                        ),
                        SizedBox(height: 10)

                      ],
                    )
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigation(3),
      ),
    );
  }
}
