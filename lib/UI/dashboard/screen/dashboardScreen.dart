import 'package:callingapp/UI/FilterBubble/filterBubble.dart';
import 'package:callingapp/component/customMenu/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  final TextStyle _textInputStyle = TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'SourceSansPro-Regular');
  final TextStyle _hintStyle = TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'SourceSansPro-Regular');
  TextEditingController searchController = new TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height:height,
      decoration: BoxDecoration(
        // borderRadius:
        // BorderRadius.all(Radius.circular(15)),
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
              // image: AssetImage("assets/6.png"),
                image: AssetImage("assets/4.png"),
                fit: BoxFit.cover
            )
        ),*/
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
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20)),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  const Color(0x0A26222D),
                                  const Color(0xBF3FAAF2)
                                  // Color.fromARGB(235, 200, 200, 253),
                                  // Color.fromARGB(235, 236, 240, 253)
                                ])),
                        child: TextField(
                          style: _textInputStyle,
                          controller: searchController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: new InputDecoration(
                            // hasFloatingPlaceholder: true,
                            contentPadding: const EdgeInsets.only(
                                left: 10,
                                top: 10,
                                bottom: 10,
                                right: 10),
                            // hintText: 'Username',
                            // hintStyle: _hintStyle,
                            prefixIcon: Icon(Icons.search_rounded, color: Colors.white, size: 30),
                            border: InputBorder.none,
                            /* enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),*/
                          ),
                        ),
                      ),
                      SizedBox(height: 35),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Find Your',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontFamily: 'SourceSansPro-regular'),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('BEST MATCH!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontFamily: 'SourceSansPro-Bold'),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Center(
                                child: CircleAvatar(
                                  radius: 120,
                                  backgroundColor: Color(0x66000000),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(100)),
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
                                    child: CircleAvatar(
                                      radius: 100,
                                      backgroundColor: Colors.transparent,
                                      child: CircleAvatar(
                                        radius: 80,
                                        backgroundColor: Color(0x66000000),
                                          child:MaterialButton(
                                            onPressed: () {
                                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => FilterBubbleScreen()));
                                            },
                                              child: Text('Filter bubble',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25,
                                                      fontFamily: 'SourceSansPro-regular')
                                              )
                                          )
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigation(2),
      ),
    );
  }
}
