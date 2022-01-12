import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';


typedef ThemedWidgetBuilder = Widget Function(
    BuildContext context, ThemeData data);

typedef ThemeDataWithBrightnessBuilder = ThemeData Function(
    Brightness brightness);

class DynamicThemes extends StatefulWidget {

  final ThemedWidgetBuilder? themedWidgetBuilder;
  final ThemeDataWithBrightnessBuilder data;
  final Brightness? defaultBrightness;

  const DynamicThemes({Key? key, required this.data, this.themedWidgetBuilder, this.defaultBrightness}) : super(key: key);

  @override
  _DynamicThemesState createState() => _DynamicThemesState();

  static _DynamicThemesState? of(BuildContext context) {
    return context.findAncestorStateOfType<_DynamicThemesState>();
  }
}

class _DynamicThemesState extends State<DynamicThemes> {
  late ThemeData _data;

  Brightness? _brightness;

  static const String _sharedPreferencesKey = 'isDark';

  ThemeData get data => _data;

  Brightness get brightness => _brightness!;

  @override
  void initState() {
    super.initState();
    _brightness = widget.defaultBrightness;
    _data = widget.data(_brightness!);

    loadBrightness().then((bool dark) {
      _brightness = dark ? Brightness.dark : Brightness.light;
      _data = widget.data(_brightness!);
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _data = widget.data(_brightness!);
  }

  @override
  void didUpdateWidget(DynamicThemes oldWidget) {
    super.didUpdateWidget(oldWidget);
    _data = widget.data(_brightness!);
  }

  Future<void> setBrightness(Brightness brightness) async {
    setState(() {
      _data = widget.data(brightness);
      _brightness = brightness;
    });
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(
        _sharedPreferencesKey, brightness == Brightness.dark ? true : false);
  }

  void setThemeData(ThemeData data) {
    setState(() {
      _data = data;
    });
  }

  Future<bool> loadBrightness() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_sharedPreferencesKey) ??
        widget.defaultBrightness == Brightness.dark;
  }

  @override
  Widget build(BuildContext context) {
    return widget.themedWidgetBuilder!(context, _data);
  }
}

AppBarTheme appBarTheme(){

  return AppBarTheme(
    elevation: 0.0,
//    color: Colors.white,
    color: Colors.transparent,
    textTheme: TextTheme(
//      title: TextStyle(color: Colors.white, fontSize: 22, fontFamily: 'SourceSansPro-Bold'),
        headline6: TextStyle(color: Colors.white, fontSize: 22, fontFamily: 'SourceSansPro-Bold')
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.white,
    ),
    brightness: Brightness.dark
  );
}