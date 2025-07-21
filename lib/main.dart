
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'my_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized ();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp ,DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}



