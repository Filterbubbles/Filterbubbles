import 'package:callingapp/UI/auth/login/screen/loginScreen.dart';
import 'package:callingapp/component/customMenu/bottomNavigationBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../setting/screen/settingScreen.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  bool _switchValue=true;
  // String gender = 'Gender';


  int gender = 0;
  int theology=0;
  int sexualOrientation=0;
  int agePreference=0;
  int lookingFor=0;
  int bodyType=0;
  int ethnicity=0;
  int iWantToHave=0;
  int interestedIn=0;
  int education = 0;
  int smoking = 0;
  int hasKid = 0;

  List<String> genderList = ['Male', 'Female','Agender','Trans','Transgender'];
  List<String> theologyList = ['Atheist','Agnostic','Apathetic','Skeptical','Deistic','Christian ','Catholic Christian','Protestant Christian','Orthodox Christian','Jew ','Orthodox Jew ','Conservative Jew','Muslim ','Sunni Muslim','Shiite Muslim','Buddhist' ,'Hindu','Sikh','Spiritual but not religious',' Other (…………..)'];
  List<String> sexualOrientationList = ['Lesbian', 'Gay ','Bisexual', 'Transgender','Queer ','Straight', ];
  List<String> agePreferenceList = ['13-20','20-30','30-40','40-50','50-60','60-70','70-80','80-90','90-100','100-130'];
  List<String> lookingForList = ['Male','Female','All'];
  List<String> bodyTypeList = ['Athletic','Curvy','Chubby','Slim','Skinny','Tall','Normal','Muscular'];
  List<String> ethnicityList = ['White','Mixed White','Black','Mixed Black','Asian Indian side','Asian China side','Mixed Asian ','Arab ','Mixed Arab ','Latino' ,'Mixed Latino','Other (…….)'];
  List<String> iWantToHaveList = ['Friends ','Relationship ','Party ','Talk to someone ','Life Partner ','Partner but I’m Anti-monogamy ','Fun with no string attached '];
  List<String> interestedInList = ['Philosophy','Science','Art & culture','Business & Career ','Community and environment','Dancing ','Games','Vlogs','Life streaming ','Health & wellbeing ','Hobbies and passions    ','Identity and language','Politics, Economy & Movements','Music ','Pets and animals','Support and Coaching club','Technology ','Travel & Hangout ','Writing & authoring  '];
  List<String> educationList = ['High school','Some college   ','Bachelors','Masters','Doctorate PhD  ','Other (……….)'];

  List<String> smokingList = ['Yes','No','Sometimes'];
  List<String> hasKidList = ['Yes, they live with me','Yes, but they live somewhere', 'No', 'Prefer not to say'];
  bool isSelect=false,isSelect1=false,isSelect2=false,isSelect3=false,isSelect4=false,isSelect5=false,isSelect6=false,isSelect7=false,isSelect8=false,isSelect9=false,isSelect10=false,isSelect11=false;

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
      /*decoration: BoxDecoration(
          image: DecorationImage(
            // image: AssetImage("assets/6.png"),
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover
          )
      ),*/
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: new AppBar(
          actions: [
            InkWell(
              onTap:(){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingScreen()));
              },
              child: Center(
                child: Container(
                  height: 30,
                  width: 30,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    border: Border.all(
                      width: 1,
                      color: Color(0xFF02DCF0),
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Center(
                      child:SvgPicture.asset(
                          "assets/svg/setting.svg",
                          width: 18,
                          height: 18,
                          semanticsLabel: 'Setting'
                      )
                  ),
                ),
              ),
            ),
            SizedBox(width: 5,),
            InkWell(
              onTap:(){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Center(
                child: Container(
                  height: 30,
                  width: 30,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    border: Border.all(
                      width: 1,
                      color: Color(0xFF02DCF0),
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Center(
                      child:SvgPicture.asset(
                          "assets/svg/shutdown.svg",
                          width: 18,
                          height: 18,
                          semanticsLabel: 'Logout'
                      )
                  ),
                ),
              ),
            ),
            SizedBox(width: 10,)
          ],
        ),
        body: SafeArea(
          child: Stack(
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          // height: 100,
                          // width: 100,
                          child: CircleAvatar(
                            radius: 80.0,
                            // backgroundImage: AssetImage("assets/profileImage.png"),
                            // backgroundImage:NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                            child: Image.asset('assets/profileImage.png', fit: BoxFit.contain),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text('Erilich Batman',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: 'SourceSansPro-regular'),
                                  ),
                                ),
                                Divider(color: Colors.white, thickness: 1,),
                                SizedBox(height: 30),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        InkWell(
                                          child: Container(
                                            padding: const EdgeInsets.all(7),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(100)),
                                              border: Border.all(
                                                width: 1,
                                                color: Color(0xFF02DCF0),
                                                style: BorderStyle.solid,
                                              ),
                                            ),
                                            child: Center(
                                                child:SvgPicture.asset(
                                                    "assets/svg/location.svg",
                                                    width: 20,
                                                    height: 20,
                                                    semanticsLabel: 'Acme Logo'
                                                )
                                            ),
                                          ),
                                        ),
                                        SizedBox(height:5),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text('Share Live Location',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 7,
                                                  fontFamily: 'SourceSansPro-SemiBold'),
                                            )
                                        ),

                                      ],
                                    ),
                                    Column(
                                      children: [
                                        InkWell(
                                          child: Container(
                                            padding: const EdgeInsets.all(7),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(100)),
                                              border: Border.all(
                                                width: 1,
                                                color: Color(0xFF02DCF0),
                                                style: BorderStyle.solid,
                                              ),
                                            ),
                                            child: Center(
                                                child:SvgPicture.asset(
                                                    "assets/svg/shareData.svg",
                                                    width: 20,
                                                    height: 20,
                                                    semanticsLabel: 'Acme Logo'
                                                )
                                            ),
                                          ),
                                        ),
                                        SizedBox(height:5),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text('Share Data Usage',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 7,
                                                  fontFamily: 'SourceSansPro-SemiBold'),
                                            )
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        InkWell(
                                          child: Container(
                                            padding: const EdgeInsets.all(7),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(100)),
                                              border: Border.all(
                                                width: 1,
                                                color: Color(0xFF02DCF0),
                                                style: BorderStyle.solid,
                                              ),
                                            ),
                                            child: Center(
                                                child:SvgPicture.asset(
                                                    "assets/svg/chat.svg",
                                                    width: 20,
                                                    height: 20,
                                                    semanticsLabel: 'Acme Logo'
                                                )
                                            ),
                                          ),
                                        ),
                                        SizedBox(height:5),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text('Share Chat List',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 7,
                                                  fontFamily: 'SourceSansPro-SemiBold'),
                                            )
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            const Color(0xFF93F331),
                                            const Color(0xFF10E7FB),
                                            const Color(0xFFFC69FC),
                                            // Color.fromARGB(235, 200, 200, 253),
                                            // Color.fromARGB(235, 236, 240, 253)
                                          ])),
                                  child: MaterialButton(
                                    // padding: const EdgeInsets.symmetric(horizontal: 50),
                                    minWidth: 240,
                                    onPressed: (){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserProfileScreen()));

                                      /*  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(builder: (context) => UserProfileScreen()),
                                          (Route<dynamic> route) => false);*/
                                    },
                                    child: Center(child: Text('Create my bubble (Channel)',style: TextStyle(color: Colors.white, fontFamily: 'SourceSansPro-Regular'))),
                                  ),
                                ),
                              ]
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Activate Match Making',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'SourceSansPro-SemiBold'),
                            ),
                            Switch(
                              value: _switchValue,
                              onChanged: (value) {
                                setState(() {
                                  _switchValue = !_switchValue;
                                });
                              },
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                        ),
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
                                  dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(genderList, gender, 'Select Gender'),
                                      barrierColor: Colors.black.withOpacity(0.8)
                                  );
                                  if(id != null)
                                    setState(() {
                                      gender = id;
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
                                        child: Text(isSelect? "${genderList[gender]}":"Select",
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
                            Text('Theology',
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
                                  dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(theologyList, theology, 'Select Theology'));
                                  if(id != null)
                                    setState(() {
                                      theology = id;
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
                                        child: Text(isSelect1?"${theologyList[theology]}":"Select",
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
                            Text('Sexual Orientation',
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
                                  dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(sexualOrientationList, sexualOrientation, 'Select Sexual Orientation'));
                                  if(id != null)
                                    setState(() {
                                      sexualOrientation = id;
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
                                        child: Text(isSelect2?"${sexualOrientationList[sexualOrientation]}":"Select",
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
                            Text('Age Preference',
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
                                  dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(agePreferenceList, agePreference, 'Select Age Preference'));
                                  if(id != null)
                                    setState(() {
                                      agePreference = id;
                                      isSelect3=true;
                                    });
                                  else
                                    isSelect3=false;
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      width : 100,
                                      child: Center(
                                        child: Text(isSelect3?"${agePreferenceList[agePreference]}":"Select",
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
                            Text('Looking For',
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
                                  dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(lookingForList, lookingFor, 'Select Looking For'));
                                  if(id != null)
                                    setState(() {
                                      lookingFor = id;
                                      isSelect4=true;
                                    });
                                  else
                                    isSelect4=false;
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      width : 100,
                                      child: Center(
                                        child: Text(isSelect4?"${lookingForList[lookingFor]}":"Select",
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
                            Text('Body Type',
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
                                  dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(bodyTypeList, bodyType, 'Select Body Type'));
                                  if(id != null)
                                    setState(() {
                                      isSelect5=true;
                                    });
                                  else
                                    isSelect5=false;
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      width : 100,
                                      child: Center(
                                        child: Text(isSelect5?"${bodyTypeList[bodyType]}":"Select",
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
                            Text('Ethnicity',
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
                                  dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(ethnicityList, ethnicity, 'Select Ethnicity'));
                                  if(id != null)
                                    setState(() {
                                      ethnicity = id;
                                      isSelect6=true;
                                    });
                                  else
                                    isSelect6=false;
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      width : 100,
                                      child: Center(
                                        child: Text(isSelect6?"${ethnicityList[ethnicity]}":"Select",
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
                            Text('I Want To Have',
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
                                  dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(iWantToHaveList, iWantToHave, 'Select Passion'));
                                  if(id != null)
                                    setState(() {
                                      iWantToHave = id;
                                      isSelect7=true;
                                    });
                                  else
                                    isSelect7=false;
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      width : 100,
                                      child: Center(
                                        child: Text(isSelect7?"${iWantToHaveList[iWantToHave]}":"Select",
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
                            Text('Interested In',
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
                                  dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(interestedInList, interestedIn, 'Select Interested In'));
                                  if(id != null)
                                    setState(() {
                                      interestedIn = id;
                                      isSelect8=true;
                                    });
                                  else
                                    isSelect8=false;
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      width : 100,
                                      child: Center(
                                        child: Text(isSelect8?"${interestedInList[interestedIn]}":"Select",
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
                            Text('Education ',
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
                                  dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(educationList, education, 'Select Education'));
                                  if(id != null)
                                    setState(() {
                                      education  = id;
                                      isSelect9=true;
                                    });
                                  else
                                    isSelect9=false;
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      width : 100,
                                      child: Center(
                                        child: Text(isSelect9?"${educationList[education ]}":"Select",
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
                                  dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(hasKidList, hasKid, 'Select Has kid'));
                                  if(id != null)
                                    setState(() {
                                      hasKid = id;
                                      isSelect10=true;
                                    });
                                  else
                                    isSelect10=false;
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      width : 100,
                                      child: Center(
                                        child: Text(isSelect10?"${hasKidList[hasKid]}":"Select",
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
                              child:InkWell(
                                onTap: () async {
                                  dynamic id = await showModalBottomSheet(context: context, builder: (context) => optionSheet(smokingList, smoking, 'Select Smoking'));
                                  if(id != null)
                                    setState(() {
                                      smoking = id;
                                      isSelect11=true;
                                    });
                                  else
                                    isSelect11=false;                                },
                                child: Row(
                                  children: [
                                    Container(
                                      width : 100,
                                      child: Center(
                                        child: Text(isSelect11?"${smokingList[smoking]}":"Select",
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
