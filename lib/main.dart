import 'package:flutter/material.dart';
import 'package:oraan_flutter/provider/country_provider.dart';
import 'package:oraan_flutter/provider/name_provider.dart';
import 'package:oraan_flutter/provider/number_provider.dart';
import 'package:oraan_flutter/views/login_screen.dart';
import 'package:provider/provider.dart';
import 'dart:collection';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => NumberProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => NameProvider(),
        ),
        ChangeNotifierProvider<SingleSelectCountry>(
          create: (_) {
            return SingleSelectCountry();
          },
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
