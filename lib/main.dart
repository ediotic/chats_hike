
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'firebase_options.dart';
import 'my_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized ();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp ,DeviceOrientation.portraitDown]);

  // for firebase initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
// for supabase intialized
await Supabase.initialize(
  url: "https://nvfpdpfeyoyycemypzhs.supabase.co",
   anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im52ZnBkcGZleW95eWNlbXlwemhzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTQzOTIzODAsImV4cCI6MjA2OTk2ODM4MH0.UaPL91pkMZLRqpIP91wnmh7im1KSsk1kshakk9KZry0");
  runApp(const MyApp());
}



