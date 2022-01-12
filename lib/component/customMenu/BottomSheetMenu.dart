// import 'package:Jula_App/activedirectory/model/config.dart';
// import 'package:Jula_App/component/customNavigator.dart';
// import 'package:Jula_App/data/apiUrls.dart';
// import 'package:Jula_App/localization/app_translations.dart';
// import 'package:Jula_App/repository/repository_service_todo.dart';
// import 'package:Jula_App/select_language/selectlanguage.dart';
// import 'package:Jula_App/splashScreen.dart';
// import 'package:Jula_App/store_list/storeList.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:Jula_App/activedirectory/aad_oauth.dart';
//
// class BottomSheetMenu extends StatefulWidget {
//   @override
//   _BottomSheetMenuState createState() => _BottomSheetMenuState();
// }
//
// class _BottomSheetMenuState extends State<BottomSheetMenu> {
//   CustomNavigator customNavigator = CustomNavigator();
//   final key = GlobalKey<State<BottomNavigationBar>>();
//   static double iconesize = 25;
//   double spaceBtIconeText = 8.0;
//   SharedPreferences? sharedPreferences;
//   final storage = new FlutterSecureStorage();
//   // Config config = new Config();
//   String? useremail;
//   String? userstore;
//   String? userRole;
//   int? storeLength;
//   String? app_version;
//   final iconColor = Colors.grey;
//   static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const TextStyle textStyle = TextStyle(
//       color: Colors.black,
//       fontSize: 17,
//       fontFamily: "SourceSansPro-Regular");
//
//
//   @override
//   void initState()  {
//     super.initState();
//     loadData();
//    // checkfirstsync();
//   }
//
//   loadData()async {
//     sharedPreferences = await SharedPreferences.getInstance();
//     useremail = await storage.read(key: 'useremail');
//     userstore = await storage.read(key:'userstore');
//     userRole = await storage.read(key:'userRole');
//     app_version = await sharedPreferences?.getString('version');
//     storeLength = await sharedPreferences?.getInt('storeLength');
//     if(mounted)
//       setState(() {});
//     // if(await RepositoryServiceQuestions.checkFirstSync())
//     // {
//     //   if (mounted)
//     //     setState(()  {
//     //       firstsyncRequired = true;
//     //     });
//     // }else {
//     //   if (mounted)
//     //     setState(() {
//     //       firstsyncRequired = false;
//     //     });
//     // }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//               child: new Text( "${AppTranslations.of(context)?.text('key_User')} : $useremail", style:TextStyle(
//                   color: Colors.black,
//                   fontSize: 15,
//                   fontFamily: "SourceSansPro-Regular")),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//               child: new Text("${AppTranslations.of(context)?.text('key_store')} : $userstore ", style:TextStyle(
//                   color: Colors.black,
//                   fontSize: 15,
//                   fontFamily: "SourceSansPro-Regular")),
//             ),
//           ],
//         ),
//         ListView(
//           shrinkWrap: true,
//           children: [
//             if(sharedPreferences != null && sharedPreferences?.getString('locale') != null )
//               // userRole == "Admin" ||  userRole == "CountryManager" ||  userRole == "RegionalManager" ?
//               storeLength != null && storeLength! > 1?
//               ListTile(
//                 title: Row(
//                   children: [
//                     Icon(
//                       Icons.store,
//                       size: iconesize,
//                       color: iconColor,
//                     ),
//                     SizedBox(
//                       width: spaceBtIconeText,
//                     ),
//                     Text('${AppTranslations.of(context)?.text("key_Store_list")}', style: textStyle),
//                   ],
//                 ),
//                 onTap: (){
//                   customNavigator.push(context, StoreList());
//                   // Navigator.push(context, MaterialPageRoute(builder: (context) => StoreList()));
//                 },
//               )
//                   :SizedBox(),
//             if(sharedPreferences != null && sharedPreferences?.getString('locale') != null )
//               ListTile(
//                 title: Row(
//                   children: [
//                     Icon(
//                       Icons.language,
//                       size: iconesize,
//                       color: iconColor,
//                     ),
//                     SizedBox(
//                       width: spaceBtIconeText,
//                     ),
//                     Text('${AppTranslations.of(context)?.text("key_language")}', style: textStyle),
//                   ],
//                 ),
//                 onTap: (){
//                   customNavigator.push(context, SelectLanguage());
//                   // Navigator.push(context, MaterialPageRoute(builder: (context) => SelectLanguage()));
//                 },
//               ),
//
//             new ListTile(
//                 title: Row(
//                   children: <Widget>[
//                     Icon(
//                       Icons.power_settings_new,
//                       size: iconesize,
//                       color: iconColor,
//                     ),
//                     SizedBox(
//                       width: spaceBtIconeText,
//                     ),
//                     new Text('${AppTranslations.of(context)?.text("key_Logout")}',
//                         style: textStyle),
//                     Spacer(),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 30.0),
//                       child: new Text(ApisUrls.BASE_URL == "https://qajulaapi.greatrateinspect.com" ?
//                       "QA v $app_version"
//                           : "v $app_version" , style:TextStyle(
//                           color: Colors.black,
//                           fontSize: 12,
//                           fontFamily: "SourceSansPro-Regular")),
//                     ),
//                   ],
//                 ),
//                 onTap: () async {
//                   logoutfun();
//                 }
//             ),
//           ],
//         ),
//       ],
//     );
//   }
//
//
//   logoutfun() async {
//     Config config = new Config();
//     final AadOAuth oauth = new AadOAuth(config);
//     // sharedPreferences = await SharedPreferences.getInstance();
//     await RepositoryServiceTodo.resetdata();
//     await storage.deleteAll();
//     await oauth.logout();
//     customNavigator.pushAndRemoveUntil(context, MyHomePage());
//     // Navigator.of(context).pushAndRemoveUntil(
//     //     MaterialPageRoute(builder: (context) => MyHomePage()),
//     //         (Route<dynamic> route) => false);
//   }
//
//
// }
//
