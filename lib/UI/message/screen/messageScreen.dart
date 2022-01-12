import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {

  final TextStyle _textInputStyle = TextStyle(color: Colors.black, fontSize: 18, fontFamily: 'SourceSansPro-RegularItalic');
  final TextStyle _hintStyle = TextStyle(color: Colors.grey, fontSize: 17, fontFamily: 'SourceSansPro-RegularItalic');
  TextEditingController searchController = new TextEditingController(text: "");

  final leftGradientColorStart = Color(0x0026222D);
  final leftGradientColorEnd = Color(0xFF3FAAF2);

  final rightGradientColorStart = Color(0xFFFF9830);
  final rightGradientColorEnd = Color(0x00A45F1A);

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
                image: AssetImage("assets/10.png"),
                fit: BoxFit.cover
            )
        ),*/
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        appBar: new AppBar(),
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Column(
                          children: [
                            Container(
                                padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                            'Message',
                                          style: TextStyle(color: Colors.white, fontSize: 35, fontFamily: 'SourceSansPro-Bold')
                                        ),
                                        Column(
                                          children: [
                                            CircleAvatar(
                                                radius: 50.0,
                                                backgroundImage: AssetImage("assets/profileImage.png"),
                                                backgroundColor: Colors.transparent
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                    "assets/svg/call2.svg",
                                                    width: 20,
                                                    height: 20,
                                                    semanticsLabel: 'call'
                                                ),
                                                SizedBox(width: 20),
                                                SvgPicture.asset(
                                                    "assets/svg/camera.svg",
                                                    width: 20,
                                                    height: 20,
                                                    semanticsLabel: 'video call'
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Divider(color: Colors.white, thickness:1),
                                  ],
                                )
                            ),
                            Column(
                              children: [
                                messageStyle(MessageModel("1",'Ali',"What's your name?")),
                                SizedBox(height: 5),
                                messageStyle(MessageModel("2",'Peter',"My name is peter")),
                                SizedBox(height: 5),
                                messageStyle(MessageModel("1",'Ali',"What is the best time to visit Rio?")),
                                SizedBox(height: 5),
                                messageStyle(MessageModel("2",'Peter',"March is one of the best months to visit Rio")),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  _buildInput()
                ],
              ),
            ],
          ),
        ),
          // bottomNavigationBar: _buildInput()
      ),
    );
  }

  Widget messageStyle(MessageModel msg){
    return msg.userId == '1' ?
      Container(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Colors.transparent,
                    child: Image.asset('assets/profileImage.png', fit: BoxFit.contain),
                  ),
                  SizedBox(width: 10),
                  Text(
                      '${msg.userName}',
                      style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'SourceSansPro-SemiBold')
                  ),
                ],
              ),
              SizedBox(height: 7),
              Container(
                margin:const EdgeInsets.only(right: 50),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.only(
                    bottomRight:Radius.circular(100),
                    topRight: Radius.circular(100),
                  ),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      leftGradientColorStart,
                      leftGradientColorEnd
                    ])
                ),
                child: Text(
                    '${msg.text}',
                    style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'SourceSansPro-Regular')
                ),
              ),
            ],
          ),
        ],
      ),
    )
        :Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Colors.transparent,
                    child: Image.asset('assets/profileImage.png', fit: BoxFit.contain),
                  ),
                  SizedBox(width: 10),
                  Text(
                      '${msg.userName}',
                      style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'SourceSansPro-SemiBold')
                  ),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 7),
              Container(
                margin:const EdgeInsets.only(left: 50),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topLeft:Radius.circular(100),
                      bottomLeft: Radius.circular(100),

                    ),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          rightGradientColorStart,
                          rightGradientColorEnd
                        ])
                ),
                child: Text(
                    '${msg.text}',
                    style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'SourceSansPro-Regular')
                ),
              ),
            ],
          )
        );
  }


  Widget _buildInput(){
   return Container(
      height: 50,
      // width: width,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 4, top:6,bottom: 6,right: 6),
              child:SvgPicture.asset(
                  "assets/svg/attachment.svg",
                  width: 15,
                  height: 15,
                  semanticsLabel: 'Comment Submit'
              )
          ),

          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Icon(Icons.camera_alt, color: Colors.black, size:17),
          ),

          Padding(
              padding: const EdgeInsets.all(6.0),
              child:SvgPicture.asset(
                  "assets/svg/emoje.svg",
                  width: 15,
                  height: 15,
                  semanticsLabel: 'Comment Submit'
              )
          ),

          Expanded(
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
                hintText: 'Write something',
                hintStyle: _hintStyle,
                // prefixIcon: Icon(Icons.search_rounded, color: Colors.white, size: 30),
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

          Padding(
              padding: const EdgeInsets.all(6.0),
              child:SvgPicture.asset(
                  "assets/svg/mice.svg",
                  width: 20,
                  height: 20,
                  semanticsLabel: 'mice'
              )
          ),

          Padding(
              padding: const EdgeInsets.all(6.0),
              child:SvgPicture.asset(
                  "assets/svg/commentSubmit.svg",
                  width: 25,
                  height: 25,
                  semanticsLabel: 'Comment Submit'
              )
          ),
        ],
      ),
    );
  }



}

class MessageModel{
  String? userId;
  String? userName;
  String? text;

  MessageModel(this.userId, this.userName, this.text);

}