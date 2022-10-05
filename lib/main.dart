import 'package:flutter/material.dart';
import 'package:oraan_flutter/views/login_screen.dart';
import 'package:provider/provider.dart';

import 'business_logic/country_provider.dart';
import 'business_logic/name_provider.dart';
import 'business_logic/number_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        ChangeNotifierProvider<CountryProvider>(
          create: (_) {
            return CountryProvider();
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
