import 'package:app_store_flutter/src/models/richCard_model.dart';
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
                          style: data.subtitulo_style,
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
    return Container();
  }

  Widget _createCardAppBig(RichCard data) {
    return Container();
  }
}
