import 'package:callingapp/component/customMenu/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class FilterBubbleScreen extends StatefulWidget {
  const FilterBubbleScreen({Key? key}) : super(key: key);

  @override
  _FilterBubbleScreenState createState() => _FilterBubbleScreenState();
}

class _FilterBubbleScreenState extends State<FilterBubbleScreen> {

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
              ListView(
                shrinkWrap: true,
              children:[
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
                            prefixIcon: Icon(Icons.search_rounded, color: Colors.white, size: 30),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 35),
                Wrap(
                  verticalDirection: VerticalDirection.down,
                        spacing: 15,
                        runSpacing: 15,
                        children: [
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/userprofileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/profileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/userprofileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/profileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/userprofileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/profileImage.png"),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/userprofileImage.png"),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/profileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/userprofileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/profileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/userprofileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/profileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/userprofileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/profileImage.png"),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/userprofileImage.png"),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/profileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/userprofileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/profileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/userprofileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/profileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/userprofileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/profileImage.png"),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/userprofileImage.png"),
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            radius: 32.0,
                            backgroundImage: AssetImage("assets/profileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          )
                        ],
                      ),
                    ],
                  )
              ),
        ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigation(2),
      ),
    );
  }
}