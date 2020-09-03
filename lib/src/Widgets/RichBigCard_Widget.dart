import 'package:app_store_flutter/src/models/richCard_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RichBigCardWidget extends StatelessWidget {
  final RichCard data;

  RichBigCardWidget({@required this.data});

  @override
  Widget build(BuildContext context) {
    // Separate models cards
    switch (data.cardType) {
      case 0:
        return _createCardImageBig(data);
        break;
      case 1:
        return _createCardListApps(data);
        break;
      case 2:
        return _createCardVideoBig(data);
        break;
      case 3:
        return _createCardAppBig(data);
        break;
      default:
        return Container(
          child: Center(
            child: Text('Card'),
          ),
        );
        break;
    }
  }

  Widget _createCardImageBig(RichCard data) {
    return Container(
      height: 500.0,
      child: GestureDetector(
        onTap: () {
          // #TODO: Abrir pestaña articulo conservando elemento
        },
        child: Hero(
          tag: data.id_hero,
          child: Card(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              clipBehavior: Clip.antiAlias,
              elevation: 10.0,
              child: Stack(
                children: [
                  Image(
                    image: NetworkImage(data.imagenPrevia),
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.titular.toUpperCase(),
                          style: data.titular_style,
                        ),
                        Text(
                          data.titulo,
                          style: data.titulo_style_light,
                        ),
                        Spacer(),
                        Text(
                          data.subtitulo,
                          style: data.subtitulo_style_light,
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }

  Widget _createCardListApps(RichCard data) {
    return Container();
  }

  Widget _createCardVideoBig(RichCard data) {
    return Container(
      height: 400.0,
      child: GestureDetector(
        onTap: () {
          // #TODO: Abrir pestaña articulo conservando elemento
        },
        child: Hero(
          tag: data.id_hero,
          child: Card(
            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            clipBehavior: Clip.antiAlias,
            elevation: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image(
                      image: NetworkImage(data.videoPrevio),
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      width: 50.0,
                      bottom: 5.0,
                      right: 5.0,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.volume_off,
                          color: Color.fromRGBO(176, 176, 176, 1.0),
                        ),
                        onPressed: () {},
                        color: Color.fromRGBO(35, 35, 36, 1.0),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.titular.toUpperCase(),
                        style: data.titular_style,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text(
                        data.titulo,
                        style: data.titulo_style_dark,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        data.subtitulo,
                        style: data.subtitulo_style_grey,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _createCardAppBig(RichCard data) {
    return Container();
  }
}
