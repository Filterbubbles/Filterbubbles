import 'package:callingapp/component/customMenu/bottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../message/screen/messageScreen.dart';

class FriendProfileScreen extends StatefulWidget {
  const FriendProfileScreen({Key? key}) : super(key: key);

  @override
  _FriendProfileScreenState createState() => _FriendProfileScreenState();
}

class _FriendProfileScreenState extends State<FriendProfileScreen> {
  int gender = 0;
  int interested = 0;
  int looking = 0;
  int religion = 0;
  int passion = 0;
  int bodyType = 0;
  int hight = 0;
  int education = 0;
  int smoking = 0;
  int hasKid = 0;

  List<String> genderList = ['male', 'female'];
  List<String> interestedList = ['male', 'female'];
  List<String> lookingList = ['male', 'female'];
  List<String> religionList = ['Islam', 'other'];
  List<String> passionList = ['Islam', 'other'];
  List<String> bodyTypeList = ['Slim', 'other'];
  List<String> educationList = ['middle','graduate', 'other'];
  List<String> smokingList = ['Yes','No'];
  List<String> hasKidList = ['Yes','No'];

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
          actions: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: IconButton(
                    onPressed: () {  },
                    icon: Icon(Icons.more_horiz ,color: Colors.white)
                )
            )
          ],
        ),
        body: SafeArea(
          child: Stack(
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Flexible(
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 80.0,
                                        backgroundImage: AssetImage("assets/profileImage.png"),
                                        backgroundColor: Colors.transparent
                                      ),
                                      SizedBox(height: 10),
                                      Center(
                                          child: Text('Ella',style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'SourceSansPro-Bold'))
                                      ),
                                      SizedBox(height: 10),
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
                                              // padding: const EdgeInsets.symmetric(horizontal: 50),
                                              minWidth: 150,
                                              onPressed: (){
                                                /*  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(builder: (context) => UserProfileScreen()),
                                          (Route<dynamic> route) => false);*/
                                              },
                                              child: Text('Matching Check',style: TextStyle(color: Colors.white, fontFamily: 'SourceSansPro-Regular')),
                                            ),
                                          )
                                      ),
                                    ],
                                  )
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          onTap:(){
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessageScreen()));
                                          },
                                          child: SvgPicture.asset(
                                              "assets/svg/messege.svg",
                                              width: 20,
                                              height: 20,
                                              semanticsLabel: 'messege'
                                          ),
                                        ),
                                        SvgPicture.asset(
                                            "assets/svg/call.svg",
                                            width: 20,
                                            height: 20,
                                            semanticsLabel: 'call'
                                        ),
                                        SvgPicture.asset(
                                            "assets/svg/videocall.svg",
                                            width: 20,
                                            height: 20,
                                            semanticsLabel: 'video call'
                                        ),
                                        SvgPicture.asset(
                                            "assets/svg/block.svg",
                                            width: 20,
                                            height: 20,
                                            semanticsLabel: 'block'
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                         borderRadius:BorderRadius.all(Radius.circular(15)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                const Color(0x0A26222D),
                                                const Color(0xFF3FAAF2)
                                                // Color.fromARGB(235, 200, 200, 253),
                                                // Color.fromARGB(235, 236, 240, 253)
                                              ])),
                                      child: MaterialButton(
                                          onPressed: () {  },
                                          child: Center(
                                              child: Text('Subscribe bubble',style: TextStyle(color: Colors.white, fontFamily: 'SourceSansPro-Regular'))
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:BorderRadius.all(Radius.circular(15)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                const Color(0x0A26222D),
                                                const Color(0xFF3FAAF2)
                                                // Color.fromARGB(235, 200, 200, 253),
                                                // Color.fromARGB(235, 236, 240, 253)
                                              ])),
                                      child: MaterialButton(
                                          onPressed: () {  },
                                          child: Center(
                                              child: Text('Request live location',style: TextStyle(color: Colors.white, fontFamily: 'SourceSansPro-Regular'))
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:BorderRadius.all(Radius.circular(15)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                const Color(0x0A26222D),
                                                const Color(0xFF3FAAF2)
                                                // Color.fromARGB(235, 200, 200, 253),
                                                // Color.fromARGB(235, 236, 240, 253)
                                              ])),
                                      child: MaterialButton(
                                          onPressed: () {  },
                                          child: Center(
                                              child: Text('Request chat list',style: TextStyle(color: Colors.white, fontFamily: 'SourceSansPro-Regular'))
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:BorderRadius.all(Radius.circular(15)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                const Color(0x0A26222D),
                                                const Color(0xFF3FAAF2)
                                                // Color.fromARGB(235, 200, 200, 253),
                                                // Color.fromARGB(235, 236, 240, 253)
                                              ])),
                                      child: MaterialButton(
                                          onPressed: () {  },
                                          child: Center(
                                              child: Text('Request data usage',style: TextStyle(color: Colors.white, fontFamily: 'SourceSansPro-Regular'))
                                          )
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Gender',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'SourceSansPro-Regular'),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                padding: const EdgeInsets.symmetric(horizontal:5 , vertical: 3),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(
                                      color: Colors.white,
                                      width: 2.0, // Underline thickness
                                    ))
                                ),
                                child: InkWell(
                                  onTap: () async {
                                 dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(genderList, gender, 'Select Gender'));
                                    if(id != null)
                                      setState(() {
                                        gender = id;
                                      });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width : 100,
                                        child: Center(
                                          child: Text("${genderList[gender]}",
                                              softWrap: true,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style:  TextStyle(fontFamily: "SourceSansPro-Regular", color: Colors.white)
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_down , size: 25,color: Colors.white)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Interested in',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'SourceSansPro-Regular'),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                padding: const EdgeInsets.symmetric(horizontal:5 , vertical: 3),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(
                                      color: Colors.white,
                                      width: 2.0, // Underline thickness
                                    ))
                                ),
                                child: InkWell(
                                  onTap: () async {
                                    dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(interestedList, interested, 'Interested'));
                                    if(id != null)
                                      setState(() {
                                        interested = id;
                                      });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width : 100,
                                        child: Center(
                                          child: Text("${interestedList[interested]}",
                                              softWrap: true,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style:  TextStyle(fontFamily: "SourceSansPro-Regular", color: Colors.white)
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_down , size: 25,color: Colors.white)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Looking for',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'SourceSansPro-Regular'),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                padding: const EdgeInsets.symmetric(horizontal:5 , vertical: 3),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(
                                      color: Colors.white,
                                      width: 2.0, // Underline thickness
                                    ))
                                ),
                                child:InkWell(
                                  onTap: () async {
                                    dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(lookingList, looking, 'Looking for'));
                                    if(id != null)
                                      setState(() {
                                        looking = id;
                                      });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width : 100,
                                        child: Center(
                                          child: Text("${lookingList[looking]}",
                                              softWrap: true,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style:  TextStyle(fontFamily: "SourceSansPro-Regular", color: Colors.white)
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_down , size: 25,color: Colors.white)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Religion',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'SourceSansPro-Regular'),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                padding: const EdgeInsets.symmetric(horizontal:5 , vertical: 3),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(
                                      color: Colors.white,
                                      width: 2.0, // Underline thickness
                                    ))
                                ),
                                child: InkWell(
                                  onTap: () async {
                                    dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(religionList, religion, 'Religion'));
                                    if(id != null)
                                      setState(() {
                                        religion = id;
                                      });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width : 100,
                                        child: Center(
                                          child: Text("${religionList[religion]}",
                                              softWrap: true,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style:  TextStyle(fontFamily: "SourceSansPro-Regular", color: Colors.white)
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_down , size: 25,color: Colors.white)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Passion',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'SourceSansPro-Regular'),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                padding: const EdgeInsets.symmetric(horizontal:5 , vertical: 3),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(
                                      color: Colors.white,
                                      width: 2.0, // Underline thickness
                                    ))
                                ),
                                child: InkWell(
                                  onTap: () async {
                                    dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(passionList, passion, 'Passion'));
                                    if(id != null)
                                      setState(() {
                                        passion = id;
                                      });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width : 100,
                                        child: Center(
                                          child: Text("${passionList[passion]}",
                                              softWrap: true,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style:  TextStyle(fontFamily: "SourceSansPro-Regular", color: Colors.white)
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_down , size: 25,color: Colors.white)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Body type',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'SourceSansPro-Regular'),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                padding: const EdgeInsets.symmetric(horizontal:5 , vertical: 3),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(
                                      color: Colors.white,
                                      width: 2.0, // Underline thickness
                                    ))
                                ),
                                child:InkWell(
                                  onTap: () async {
                                    dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(bodyTypeList, bodyType, 'Body Type'));
                                    if(id != null)
                                      setState(() {
                                        bodyType = id;
                                      });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width : 100,
                                        child: Center(
                                          child: Text("${bodyTypeList[bodyType]}",
                                              softWrap: true,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style:  TextStyle(fontFamily: "SourceSansPro-Regular", color: Colors.white)
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_down , size: 25,color: Colors.white)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Hight',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'SourceSansPro-Regular'),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                padding: const EdgeInsets.symmetric(horizontal:5 , vertical: 3),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(
                                      color: Colors.white,
                                      width: 2.0, // Underline thickness
                                    ))
                                ),
                                child: InkWell(
                                    onTap: () async {
                                      int? id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(genderList, hight, 'Hight'));
                                      if(id != null)
                                        setState(() {
                                          hight = id;
                                        });
                                    },
                                  child: Row(
                                    children: [
                                      Container(
                                        width : 100,
                                        child: Center(
                                          child: Text("${genderList[gender]}",
                                              softWrap: true,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style:  TextStyle(fontFamily: "SourceSansPro-Regular", color: Colors.white)
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_down , size: 25,color: Colors.white)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Education',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'SourceSansPro-Regular'),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                padding: const EdgeInsets.symmetric(horizontal:5 , vertical: 3),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(
                                      color: Colors.white,
                                      width: 2.0, // Underline thickness
                                    ))
                                ),
                                child:InkWell(
                                  onTap: () async {
                                    int? id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(educationList, education, 'Education'));
                                    if(id != null)
                                      setState(() {
                                        education = id;
                                      });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width : 100,
                                        child: Center(
                                          child: Text("${educationList[education]}",
                                              softWrap: true,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style:  TextStyle(fontFamily: "SourceSansPro-Regular", color: Colors.white)
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_down , size: 25,color: Colors.white)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Smoking',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'SourceSansPro-Regular'),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                padding: const EdgeInsets.symmetric(horizontal:5 , vertical: 3),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(
                                      color: Colors.white,
                                      width: 2.0, // Underline thickness
                                    ))
                                ),
                                child: InkWell(
                                  onTap: () async {
                                    int? id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(smokingList, smoking, 'Smoking'));
                                    if(id != null)
                                      setState(() {
                                        smoking = id;
                                      });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width : 100,
                                        child: Center(
                                          child: Text("${smokingList[smoking]}",
                                              softWrap: true,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style:  TextStyle(fontFamily: "SourceSansPro-Regular", color: Colors.white)
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_down , size: 25,color: Colors.white)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Has kid',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'SourceSansPro-Regular'),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                padding: const EdgeInsets.symmetric(horizontal:5 , vertical: 3),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(
                                      color: Colors.white,
                                      width: 2.0, // Underline thickness
                                    ))
                                ),
                                child:InkWell(
                                  onTap: () async {
                                    int? id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(hasKidList, hasKid, 'Has kid'));
                                    if(id != null)
                                      setState(() {
                                        hasKid = id;
                                      });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width : 100,
                                        child: Center(
                                          child: Text("${hasKidList[hasKid]}",
                                              softWrap: true,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style:  TextStyle(fontFamily: "SourceSansPro-Regular", color: Colors.white)
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_down , size: 25,color: Colors.white)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )

                        ],
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigation(4),
      ),
    );
  }


  optionSheet(List optionsList, id, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: ListView(
        children: [
          Text("$title",style: TextStyle(fontFamily: "SourceSansPro-SemiBold", fontSize: 17, color: Colors.black) ),
          Column(
              children:optionsList
              .map(
                    (todo) => wedgetButton(context, todo, id, optionsList)
              )
                  .toList(),
          )
        ],
      )
    );
  }

  Widget wedgetButton(context , String name, id, List optionsList){
    return Container(
      padding: const EdgeInsets.symmetric(vertical:2),
      child: ListTile(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$name',
                textAlign: TextAlign.start,
                style: TextStyle(fontFamily: "SourceSansPro-Regular", color: Colors.black)
            ),
            optionsList[id] == name ?
            Icon(Icons.done, color:Colors.grey)
                :SizedBox()
          ],
        ),
        onTap: (){
          id = optionsList.indexOf(name);
         Navigator.pop(context, id);
        },
      ),
    );
  }


}


