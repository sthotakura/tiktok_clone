import 'package:flutter/material.dart';
import 'package:tiktok_clone/chat/pages/chatpage.dart';
import 'package:tiktok_clone/profile/mainfile.dart';

class BottomToolbar extends StatelessWidget {
  static const double NavigationIconSize = 20.0;
  static const double CreateButtonWidth = 38.0;

  Widget get customCreateIcon => Container(
      width: 45.0,
      height: 27.0,
      child: Stack(children: [
        Container(
            margin: EdgeInsets.only(left: 10.0),
            width: CreateButtonWidth,
            decoration: BoxDecoration(
                color: Color.fromARGB(
                  255,
                  250,
                  45,
                  108,
                ),
                borderRadius: BorderRadius.circular(7.0))),
        Container(
          margin: EdgeInsets.only(right: 10.0),
          width: CreateButtonWidth,
          decoration: BoxDecoration(
            color: Color.fromARGB(
              255,
              32,
              211,
              234,
            ),
            borderRadius: BorderRadius.circular(7.0),
          ),
        ),
        Center(
            child: Container(
          height: double.infinity,
          width: CreateButtonWidth,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(7.0)),
          child: Icon(
            Icons.add,
            size: 20.0,
          ),
        )),
      ]));

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.home, color: Colors.white, size: NavigationIconSize),
        Icon(Icons.search, color: Colors.white, size: NavigationIconSize),
        customCreateIcon,
        InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ChatPage(),
                ),
              );
            },
            child: Icon(Icons.message,
                color: Colors.white, size: NavigationIconSize)),
        InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Profile1(),),);
          },
          child: Icon(Icons.person_outline,
              color: Colors.white, size: NavigationIconSize),
        )
      ],
    );
  }
}
