import 'package:app_store_flutter/src/Widgets/AvatarCircle_Widget.dart';
import 'package:app_store_flutter/src/pages/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            title: Text('Hoy'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad),
            title: Text('Juegos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            title: Text('Apps'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.game_controller_solid),
            title: Text('Arcade'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            title: Text('Buscar'),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        if (index == 1) {
          return SearchPage();
        } else {
          return CupertinoPageScaffold(
            child: SafeArea(
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _crearHeader(),
                      Column(
                        children: _listadoCards(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }

  Widget _crearHeader() {
    final TextStyle date_style = new TextStyle(
        color: Color.fromRGBO(138, 138, 141, 1.0), fontSize: 16.0);
    final TextStyle today_style = new TextStyle(
        color: Colors.black, fontSize: 35.0, fontWeight: FontWeight.bold);

    return Container(
      height: 65.0,
      margin: EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'JUEVES, 3 DE SEPTIEMBRE',
                style: date_style,
              ),
              Spacer(),
              Text(
                'Hoy',
                style: today_style,
              )
            ],
          ),
          Spacer(),
          AvatarCircleWidget(),
        ],
      ),
    );
  }

  List<Widget> _listadoCards() {
    return [Container()];
  }
}
