import 'package:callingapp/UI/friendProfile/screen/friendProfileScreen.dart';
import 'package:callingapp/component/customMenu/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class FriendRequestScreen extends StatefulWidget {
  const FriendRequestScreen({Key? key}) : super(key: key);

  @override
  _FriendRequestScreenState createState() => _FriendRequestScreenState();
}

class _FriendRequestScreenState extends State<FriendRequestScreen> {

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
      // decoration: BoxDecoration(
      //     image: DecorationImage(
      //        image: AssetImage("assets/5.png"),
      //         fit: BoxFit.cover
      //     )
      // ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: new AppBar(
          centerTitle: true,
          title: Text('Friend Request',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'SourceSansPro-Regular'),
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 25, right: 25, top: 0, bottom: 10),
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
                        SizedBox(height: 50),
                        friendWidget(name: 'Peter'),
                        friendWidget(name: 'Adnan'),
                        friendWidget(name: 'Ali'),
                        friendWidget(name: 'Adnan'),
                        friendWidget(name: 'Peter'),
                        friendWidget(name: 'Adnan'),
                        friendWidget(name: 'Ali'),
                        friendWidget(name: 'Adnan'),
                        friendWidget(name: 'Peter'),
                        friendWidget(name: 'Adnan'),
                        friendWidget(name: 'Ali'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigation(1),
      ),
    );
  }

 friendWidget({required String name}){
    return Column(
      children: [
        Container(
           height: 55,
          padding: const EdgeInsets.only(right: 15),
          decoration:BoxDecoration(
              borderRadius:BorderRadius.all(Radius.circular(35)),
              border: Border.all(
                  color: Colors.white,
                  width: 0.5
              )
          ) ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 28.0,
                    backgroundImage: AssetImage("assets/6.png"),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(width: 10),
                  Text('$name',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'SourceSansPro-regular')
                  ),
                ],
              ),

              InkWell(
                child: Container(
                  height: 30,
                  width: 30,
                  decoration:BoxDecoration(
                   borderRadius:BorderRadius.all(Radius.circular(100)),
                       border: Border.all(
                       color: Colors.white,
                       width: 1
                       )
                   ),
                  child: Icon(Icons.add, size: 20, color: Colors.white),
                ),
                onTap: (){
                  Navigator.pushReplacement(context,PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) => FriendProfileScreen(),
                  ));
                },
              )

            ],
          ),
        ),
        SizedBox(height: 20,)
      ],
    );
 }



}
