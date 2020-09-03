import 'package:app_store_flutter/src/Widgets/AvatarCircle_Widget.dart';
import 'package:app_store_flutter/src/Widgets/RichBigCard_Widget.dart';
import 'package:app_store_flutter/src/models/richCard_model.dart';
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
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0, bottom: 0.0),
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
    final List<RichCard> articulos = List<RichCard>();
    final List<Widget> listCards = List<Widget>();

    // Generate List Articles cards
    articulos.add(RichCard(
        id_hero: 'card1',
        cardType: 0,
        titular: 'Conoce al desarrollador',
        titulo: 'Ayudar a escuchar',
        imagenPrevia: 'https://source.unsplash.com/mp_FNJYcjBM/640x537',
        subtitulo:
            'Chatable asiste a las personas con dificultades auditivas.'));
    articulos.add(RichCard(
        id_hero: 'card2',
        cardType: 0,
        titular: 'Conoce al desarrollador',
        titulo: 'Ayudar a escuchar',
        imagenPrevia: 'https://source.unsplash.com/1600x900/?nature,water',
        subtitulo:
            'Chatable asiste a las personas con dificultades auditivas.'));
    articulos.add(RichCard(
        id_hero: 'card3',
        cardType: 0,
        titular: 'Conoce al desarrollador',
        titulo: 'Ayudar a escuchar',
        imagenPrevia: 'https://source.unsplash.com/mp_FNJYcjBM/640x537',
        subtitulo:
            'Chatable asiste a las personas con dificultades auditivas.'));

    for (var card in articulos) {
      listCards.add(RichBigCardWidget(
        data: card,
      ));
    }

    return listCards;
  }
}
