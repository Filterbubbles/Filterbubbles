import 'package:callingapp/component/customMenu/bottomNavigationBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CustomDropDown.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final TextStyle _textInputStyle = TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'SourceSansPro-Regular');
  final TextStyle _hintStyle = TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'SourceSansPro-Regular');
  TextEditingController name = new TextEditingController(text: "");
  TextEditingController username = new TextEditingController(text: "");
  TextEditingController password = new TextEditingController(text: "");
  TextEditingController dateOfBirth = new TextEditingController(text: "");
  bool _contactSwitch = true;
  List<String> whoCanChatMeList= ['Everyone','Only Friends'];
  List<String> locationSettingsList=['Share my location only with(one friend)','Share my location only with friends','Share my location with friends except','switch off my location'];
  List<String> storyPrivacyList=['Only with(one friend)','My friends','My friends,except'];
  bool isSelect=false,isSelect1=false,isSelect2=false;
  int whoCanChatMe=0;
  int locationSettings=0;
  int storyPrivacy=0;


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
             image: AssetImage("assets/8.png"),
              fit: BoxFit.cover
          )
      ),*/
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          // title: Text('Settings')
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
                        Text('Settings',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'SourceSansPro-Regular'),
                        ),
                        TextField(
                          style: _textInputStyle,
                          controller: name,
                          keyboardType: TextInputType.emailAddress,
                          decoration: new InputDecoration(
                            // hasFloatingPlaceholder: true,
                            contentPadding: const EdgeInsets.only(
                                left: 10,
                                top: 10,
                                bottom: 10,
                                right: 10),
                            hintText: 'Name',
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
                            hintText: 'UserName',
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
                        TextField(
                          style: _textInputStyle,
                          controller: dateOfBirth,
                          keyboardType: TextInputType.emailAddress,
                          decoration: new InputDecoration(
                            // hasFloatingPlaceholder: true,
                            contentPadding: const EdgeInsets.only(
                                left: 10,
                                top: 10,
                                bottom: 10,
                                right: 10),
                            hintText: 'Birth Date',
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
                        Container(
                          height: 35,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.all(Radius.circular(25)),
                              border: Border.all(
                                color: Colors.white,
                                width: 1
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Link with contacts',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SourceSansPro-Regular'),
                              ),
                              Switch(
                                value: _contactSwitch,
                                onChanged: (value) {
                                  setState(() {
                                    _contactSwitch = !_contactSwitch;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 35,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.all(Radius.circular(25)),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1
                              )
                          ) ,
                          child: InkWell(
                            onTap: () async {
                              dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(whoCanChatMeList, whoCanChatMe, 'Who can Chat me'),
                                  barrierColor: Colors.black.withOpacity(0.8)
                              );
                              if(id != null)
                                setState(() {
                                  whoCanChatMe = id;
                                  isSelect=true;
                                });
                              else
                                isSelect=false;
                            },
                            child: Row(
                              children: [
                                Container(
                                  width : 100,
                                  child: Center(
                                    child: Text(isSelect? "${whoCanChatMeList[whoCanChatMe]}":"Who can Chat me",
                                        softWrap: true,
                                        maxLines: 1,
                                        overflow: TextOverflow.visible,
                                        style:  TextStyle(fontFamily: "SourceSansPro-Regular", color: Colors.white)
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Icon(Icons.keyboard_arrow_down , size: 25,color: Colors.white)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 35,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.all(Radius.circular(25)),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1
                              )
                          ) ,
                          child: InkWell(
                            onTap: () async {
                              dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(locationSettingsList, locationSettings, 'Location Settings'),
                                  barrierColor: Colors.black.withOpacity(0.8)
                              );
                              if(id != null)
                                setState(() {
                                  locationSettings = id;
                                  isSelect1=true;
                                });
                              else
                                isSelect1=false;
                            },
                            child: Row(
                              children: [
                                Container(
                                  width : 100,
                                  child: Center(
                                    child: Text(isSelect1? "${locationSettingsList[locationSettings]}":"Location Settings",
                                        softWrap: true,
                                        maxLines: 1,
                                        overflow: TextOverflow.visible,
                                        style:  TextStyle(fontFamily: "SourceSansPro-Regular", color: Colors.white)
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Icon(Icons.keyboard_arrow_down , size: 25,color: Colors.white)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 35,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.all(Radius.circular(25)),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1
                              )
                          ) ,

                          child: InkWell(
                            onTap: () async {
                              dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(storyPrivacyList, storyPrivacy, 'Story Privacy'),
                                  barrierColor: Colors.black.withOpacity(0.8)
                              );
                              if(id != null)
                                setState(() {
                                  storyPrivacy = id;
                                  isSelect2=true;
                                });
                              else
                                isSelect2=false;
                            },
                            child: Row(
                              children: [
                                Container(
                                  width : 100,
                                  child: Center(
                                    child: Text(isSelect2? "${storyPrivacyList[storyPrivacy]}":"Story Privacy",
                                        softWrap: true,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style:  TextStyle(fontFamily: "SourceSansPro-Regular", color: Colors.white)
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Icon(Icons.keyboard_arrow_down , size: 25,color: Colors.white)
                              ],
                            ),
                          ),

                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 35,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.all(Radius.circular(25)),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1
                              )
                          ) ,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Blocked',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SourceSansPro-Regular'),
                              ),
                              Center(child: Icon(Icons.keyboard_arrow_down , size: 25,color: Colors.white))
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 35,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.all(Radius.circular(25)),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1
                              )
                          ) ,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Clear search history',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'SourceSansPro-Regular'),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 35,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.all(Radius.circular(25)),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1
                              )
                          ) ,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Privacy policy',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'SourceSansPro-Regular'),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 35,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.all(Radius.circular(25)),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1
                              )
                          ) ,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Community guideline',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'SourceSansPro-Regular'),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 35,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.all(Radius.circular(25)),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1
                              )
                          ) ,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Suspend my account',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'SourceSansPro-Regular'),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 35,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.all(Radius.circular(25)),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1
                              )
                          ) ,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Deactivate & delete account permanently',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'SourceSansPro-Regular'),
                            ),
                          ),
                        ),

                      ],
                    ),
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
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFFE2ED17),
                  const Color(0xFFC241F7),
                  const Color(0xFF02DCF0),
                ])
        ),
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
            Icon(Icons.done, color:Colors.black)
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
