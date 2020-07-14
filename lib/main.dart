import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_store_app/src/pages/shoe_page.dart';
import 'package:shoe_store_app/src/models/shoe_model.dart';

 
void main() { 

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ShoeModel())
      ],
      child: MyApp()
    )
  );
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes App',
      debugShowCheckedModeBanner: false,
      home: ShoePage()
    );
  }
}