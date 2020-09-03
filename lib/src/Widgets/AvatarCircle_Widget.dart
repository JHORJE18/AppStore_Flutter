import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarCircleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Icon(
        CupertinoIcons.person_solid,
        size: 35.0,
        color: Colors.black,
      ),
      backgroundColor: Color.fromRGBO(219, 220, 224, 1.0),
    );
  }
}
