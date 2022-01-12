import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginWithFaceId extends StatefulWidget {
  const LoginWithFaceId({Key? key}) : super(key: key);

  @override
  _LoginWithFaceIdState createState() => _LoginWithFaceIdState();
}

class _LoginWithFaceIdState extends State<LoginWithFaceId> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height:height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover
          )
      ),
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: new AppBar(
            backgroundColor: Colors.transparent,
          ),
          body: SafeArea(
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text('Face ID', style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'SourceSansPro-SemiBold'),),
                            SizedBox(height: 40),
                            Align(
                                alignment: Alignment.center,
                                child:  Container(
                                    padding: const EdgeInsets.all(20),
                                    child:SvgPicture.asset(
                                        "assets/svg/faceScanner.svg",
                                        width: 250,
                                        height: 270,
                                        semanticsLabel: 'Apple'
                                    )
                                )
                            ),
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
                                SizedBox(width: 30),
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
                                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginWithFaceId()));
                                        },
                                        child: Container(
                                            padding: const EdgeInsets.all(20),
                                           child: CircleAvatar(
                                             radius: 30.0,
                                             backgroundColor: Colors.transparent,
                                             child:Text('Try Again', style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'SourceSansPro-SemiBold'))
                                           ),
                                           // child:Text('Try Again', style: TextStyle(color: Colors.white, fontSize: 11, fontFamily: 'SourceSansPro-SemiBold'))
                                        )
                                    )
                                ),
                                SizedBox(width: 30),
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
      ),
    );
  }
}
