import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shoe_store_app/src/models/shoe_model.dart';
import 'package:shoe_store_app/src/pages/shoe_desc_page.dart';

class CustomShoePrev extends StatelessWidget {
  
  final bool fullScreen;

  CustomShoePrev({
    this.fullScreen = false
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(!this.fullScreen) {
          Navigator.push(context, 
            MaterialPageRoute(
              builder: (BuildContext context) => ShoeDescPage()
            )
          );
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (this.fullScreen) ? 5 : 20,
          vertical: (this.fullScreen) ? 0 : 5,
        ),
        child: Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
            color: Color(0xffFFCF53),
            borderRadius: 
              (!this.fullScreen) 
                ? BorderRadius.circular(30)
                : BorderRadius.only(
                    bottomLeft:  Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    
                )
          ),
          child: Column(
            children: <Widget>[
              _ShoeImg(fullScreen: this.fullScreen),
              if(!this.fullScreen) _ShowOptions()
            ],
          ),
        ),
      ),
    );
  }
}

class _ShoeImg extends StatelessWidget {
  final bool fullScreen;    

  _ShoeImg({
    this.fullScreen = false
  });

  @override
  Widget build(BuildContext context) {
    final shoeModel = Provider.of<ShoeModel>(context);

    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 20,
            right: 0,
            child: _ShoeShadown(),
          ),
          Image(image: AssetImage(shoeModel.assetImg), height: (!this.fullScreen) ? 250 : 300,),
        ],
      ),
    );
  }
}

class _ShoeShadown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.55,
      child: Container(
        width: 250,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(color: Color(0XffEAA14E), blurRadius: 40)
          ]
        ),
      
      ),
    );
  }
}

class _ShowOptions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _ShowBoxOptions(number: 20.5),
            _ShowBoxOptions(number: 30),
            _ShowBoxOptions(number: 35.5),
            _ShowBoxOptions(number: 40),
            _ShowBoxOptions(number: 45.5),
          ],
        ),
      ),
    );
  }
}

class _ShowBoxOptions extends StatelessWidget {
  final double number;

  _ShowBoxOptions({
    @required this.number
  });

  @override
  Widget build(BuildContext context) {

    final shoeModel = Provider.of<ShoeModel>(context);

    return GestureDetector(
      onTap: () {
         final shoeModel = Provider.of<ShoeModel>(context, listen: false);
         shoeModel.size = this.number;

      },
      child: Container(
        alignment: Alignment.center,
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: (this.number == shoeModel.size) ? Color(0xffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if(this.number == shoeModel.size)
            BoxShadow(
              color: Color(0xffF1A23A),
              blurRadius: 10,
              offset:  Offset(0,5)
            )
          ]
        ),
        child: Text('${number.toString().replaceAll('.0', '')}',
                style: TextStyle(
                  color: (this.number == shoeModel.size) ? Colors.white : Color(0xffF1A23A),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  
                )),
      ),
    );
  }
}