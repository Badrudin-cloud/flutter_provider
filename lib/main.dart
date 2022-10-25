import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/providers/counter_provider.dart';
import 'package:provider_test/screens/home_screen.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Counter()),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'provider',
      home: HomeScreen(),
    );
  }
}
