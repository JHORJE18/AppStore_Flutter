import 'package:app_store_flutter/src/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Cupertino App',
      routes: getApplicationRoutes(),
      initialRoute: '/',
    );
  }
}
