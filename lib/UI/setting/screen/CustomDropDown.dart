import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final String text;

  const CustomDropdown({Key? key, required this.text}) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  late GlobalKey actionKey;
  late double height, width, xPosition, yPosition;
  bool isDropdownOpened = false;
  late OverlayEntry floatingDropdown;

  @override
  void initState() {
    actionKey = LabeledGlobalKey(widget.text);
    super.initState();
  }

  void findDropdownData() {
    final RenderBox renderBox = actionKey.currentContext?.findRenderObject() as RenderBox;
    height = renderBox.size.height;
    width = renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
    print(height);
    print(width);
    print(xPosition);
    print(yPosition);
  }

  OverlayEntry _createFloatingDropdown() {
    return OverlayEntry(builder: (context) {
      return Positioned(
        left: xPosition,
        width: width,
        top: yPosition + height,
        height: 4 * height + 40,
        child: DropDown(
          itemHeight: height,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: actionKey,
      onDoubleTap: ()async{
        dynamic id=await showModalBottomSheet(context: context, builder: (context) => optionSheet( 'Select Theology'));
      },
      onTap: () {
        setState(() {
          if (isDropdownOpened) {
            floatingDropdown.remove();
          } else {
            findDropdownData();
            floatingDropdown = _createFloatingDropdown();
            Overlay.of(context)!.insert(floatingDropdown);
          }

          isDropdownOpened = !isDropdownOpened;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.transparent,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        child: Row(
          children: <Widget>[
            Text(
              widget.text.toUpperCase(),
              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w200),
            ),
            Spacer(),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  optionSheet(String s) {}
}

class DropDown extends StatelessWidget {
  final double itemHeight;

  const DropDown({Key? key, required this.itemHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment(-0.85, 0),
          child: ClipPath(
            child: Container(
              height: 20,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
              ),
            ),
          ),
        ),
        Material(
          elevation: 20,
          child: Container(
            height: 4 * itemHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: <Widget>[
                DropDownItem.first(
                  text: "Add new",
                  iconData: Icons.add_circle_outline,
                  isSelected: false,
                ),
                DropDownItem(
                  text: "View Profile",
                  iconData: Icons.person_outline,
                  isSelected: false,
                ),
                DropDownItem(
                  text: "Settings",
                  iconData: Icons.settings,
                  isSelected: false,
                ),
                DropDownItem.last(
                  text: "Logout",
                  iconData: Icons.exit_to_app,
                  isSelected: true,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DropDownItem extends StatelessWidget {

  final String text;
  final IconData iconData;
  final bool isSelected;
  final bool isFirstItem;
  final bool isLastItem;

  const DropDownItem({Key? key, required this.text, required this.iconData, this.isSelected = false, this.isFirstItem = false, this.isLastItem = false})
      : super(key: key);

  factory DropDownItem.first({required String text, required IconData iconData, required bool isSelected}) {
    return DropDownItem(
      text: text,
      iconData: iconData,
      isSelected: isSelected,
      isFirstItem: true,
    );
  }

  factory DropDownItem.last({required String text, required IconData iconData,required bool isSelected}) {
    return DropDownItem(
      text: text,
      iconData: iconData,
      isSelected: isSelected,
      isLastItem: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: isFirstItem ? Radius.circular(8) : Radius.zero,
          bottom: isLastItem ? Radius.circular(8) : Radius.zero,
        ),
        color: Colors.pinkAccent,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      child: Row(
        children: <Widget>[
          Text(
            text.toUpperCase(),
            style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w200),
          ),
          Spacer(),
          Icon(
            iconData,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}