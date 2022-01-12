import 'package:callingapp/UI/message/screen/messageScreen.dart';
import 'package:callingapp/UI/messages/screen/messagesScreen.dart';
import 'package:callingapp/UI/userProfile/screen/userProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../UI/friend/screen/friendRequest.dart';
import '../../UI/dashboard/screen/dashboardScreen.dart';
import '../../UI/friendProfile/screen/friendProfileScreen.dart';
import '../../UI/friendsStories/screen/friendsStoriesScreen.dart';



class BottomNavigation extends StatefulWidget {
  int _selectedIndex;
  BottomNavigation(this._selectedIndex , {Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final key = GlobalKey<State<BottomNavigationBar>>();
  int _selectedIndex = 0;
  static double iconeWidth = 25;
  static double iconesHeight = 25;
  double spaceBtIconeText = 8.0;
  late SharedPreferences sharedPreferences;
  final storage = new FlutterSecureStorage();
  String? useremail;
  String? userstore;
  String? userRole;
  int? storeLength;
  String? app_version;
  final iconColor = Colors.grey;
  final selectedIconColor = Color(0xFF10C6DC);
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const TextStyle textStyle = TextStyle(
      color: Colors.black,
      fontSize: 17,
      fontFamily: "SourceSansPro-Regular");

  bool firstsyncRequired = false;
  final List<Widget> _children = [
    MessagesScreen(),
    FriendRequestScreen(),
    DashboardScreen(),
    FriendsStoriesScreen(),
    // FriendProfileScreen(),
    UserProfileScreen(),
  ];


  _BottomNavigationState(){
    loadData();
  }

  @override
  void initState()  {
    super.initState();
    checkfirstsync();
    _selectedIndex = widget._selectedIndex;
  }

  loadData()async {
    sharedPreferences = await SharedPreferences.getInstance();
    useremail = await storage.read(key: 'useremail');
    userstore = await storage.read(key:'userstore');
    userRole = await storage.read(key:'userRole');
    app_version = await sharedPreferences.getString('version');
    storeLength = await sharedPreferences.getInt('storeLength');

    // if(await RepositoryServiceQuestions.checkFirstSync())
    // {
    //   if (mounted)
    //     setState(()  {
    //       firstsyncRequired = true;
    //     });
    // }else {
    //   if (mounted)
    //     setState(() {
    //       firstsyncRequired = false;
    //     });
    // }
  }

  checkfirstsync() async {

  }

  Future<void> _onItemTapped(int index) async {
    _selectedIndex = index;
    sharedPreferences = await SharedPreferences.getInstance();
    userRole = await storage.read(key:'userRole');
    // it condition will use to check sync is reqired or not
      if (index < 5)
        Navigator.pushReplacement(context,PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => _children[_selectedIndex],
        ));


      // if (index == 2) ShowMenuButton();
      // if (index == 2) showModalBottomSheet( context: context, builder: (context) => BottomSheetMenu());

      if (firstsyncRequired == false && index != 2)
        setState(() {
          _selectedIndex = index;
        });

  }


  @override
  Widget build(BuildContext context) {
//    AppTranslations.of(context).text("key_Store_list");
    checkfirstsync();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius:
          BorderRadius.all(Radius.circular(100)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0x3326222D),
                const Color(0xFF3FAAF2)
                // Color.fromARGB(235, 200, 200, 253),
                // Color.fromARGB(235, 236, 240, 253)
              ])),
      child: BottomNavigationBar(
        key: key,
        backgroundColor: Colors.transparent,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),                border: Border.all(
                  width: 1,
                  color: Color(0xFF02DCF0),
                  style: BorderStyle.solid,
                ),
              ),
              child: SvgPicture.asset(
                  "assets/svg/chatmenu.svg",
                  width: iconeWidth,
                  height: iconesHeight,
                  semanticsLabel: 'Acme Logo'
              ),
            ),
            // label: '${AppTranslations.of(context).text("key_checklists")}',
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                border: Border.all(
                  width: 1,
                  color: Color(0xFF02DCF0),
                  style: BorderStyle.solid,
                ),
              ),
              child: SvgPicture.asset(
                  "assets/svg/friend.svg",
                  width: iconeWidth,
                  height: iconesHeight,
                  semanticsLabel: 'Friends'
              ),
            ),
            // label: '${AppTranslations.of(context).text("key_checklists")}',
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                border: Border.all(
                  width: 1,
                  color: Color(0xFF02DCF0),
                  style: BorderStyle.solid,
                ),
            ),
              child: SvgPicture.asset(
                  "assets/svg/home1.svg",
                  width: 40,
                  height:40,
                  semanticsLabel: 'Home'
              ),
            ),
            // label: '${AppTranslations.of(context).text("key_checklists")}',
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                border: Border.all(
                  width: 1,
                  color: Color(0xFF02DCF0),
                  style: BorderStyle.solid,
                ),
              ),
              child: SvgPicture.asset(
                  "assets/svg/timer.svg",
                  width: iconeWidth,
                  height: iconesHeight,
                  semanticsLabel: 'Timer'
              ),
            ),
            // label: '${AppTranslations.of(context).text("key_checklists")}',
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                border: Border.all(
                  width: 1,
                  color: Color(0xFF02DCF0),
                  style: BorderStyle.solid,
                ),
              ),
              child: SvgPicture.asset(
                  "assets/svg/profilee.svg",
                  width: iconeWidth,
                  height: iconesHeight,
                  semanticsLabel: 'Profile'
              ),
            ),
            // label: '${AppTranslations.of(context).text("key_checklists")}',
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:  Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,

      ),
    );
  }
}