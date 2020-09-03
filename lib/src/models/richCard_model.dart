import 'package:flutter/material.dart';

class RichCard {
  int cardType;
  String id_hero;
  String titular;
  String titulo;
  String subtitulo;
  String nombreApp;
  String descripcionApp;
  String iconoApp;
  String imagenPrevia;
  String videoPrevio;

  // Definitions
  final TextStyle titular_style =
      TextStyle(color: Color.fromRGBO(160, 160, 160, 1.0), fontSize: 16.0);
  final TextStyle titulo_style_light = TextStyle(
      color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold);
  final TextStyle titulo_style_dark = TextStyle(
      color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold);
  final TextStyle subtitulo_style = TextStyle(
      color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.normal);

  RichCard(
      {@required String id_hero,
      @required int cardType,
      @required String titular,
      String titulo,
      String subtitulo,
      String nombreApp,
      String descripcionApp,
      String iconoApp,
      String imagenPrevia,
      String videoPrevio}) {
    this.id_hero = id_hero;
    this.cardType = cardType;
    this.titular = titular;
    this.titulo = titulo;
    this.subtitulo = subtitulo;
    this.nombreApp = nombreApp;
    this.descripcionApp = descripcionApp;
    this.iconoApp = iconoApp;
    this.imagenPrevia = imagenPrevia;
    this.videoPrevio = videoPrevio;
  }
}
