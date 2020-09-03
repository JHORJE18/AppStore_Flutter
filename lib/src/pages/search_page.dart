import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        heroTag: 'search_page', // a different string for each navigationBar
        transitionBetweenRoutes: false,
      ),
      child: Center(
        child: Text(
          'terzo schermo',
        ),
      ),
    );
  }
}
