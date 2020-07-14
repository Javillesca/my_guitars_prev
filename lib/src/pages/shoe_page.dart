import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_store_app/src/models/shoe_model.dart';
import 'package:shoe_store_app/src/widgets/custom_widgets.dart';
import 'package:shoe_store_app/src/helpers/helpers.dart';

class ShoePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final shoeModel = Provider.of<ShoeModel>(context);
    changeStatusDark();

    return Scaffold(
      //body: 
      body: Column(
        children: <Widget>[
          CustomAppBar(title: 'Mas Guitarras'),
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[    
                  Hero(
                    tag: 'shoe-1',
                    child: CustomShoePrev()
                  ),
                  ShoeDesc(
                    title: shoeModel.title,
                    description: shoeModel.detail
                  )
                ],
              ),
            )
          ),
          FloatingBarButton(quantity: shoeModel.price)
        ],
      ),
      
    );
  }
}