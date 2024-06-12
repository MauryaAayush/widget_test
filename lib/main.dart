import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/Day1/View/Glass Morphism.dart';
import 'Screens/Day2/provider/twiterProvider.dart';
import 'Screens/Day2/view/Viewdata.dart';

void main() {
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => JsonProvider(),)
      ],
      child: const MyApp(),
      ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ViewScreen(),
    );
  }
}


